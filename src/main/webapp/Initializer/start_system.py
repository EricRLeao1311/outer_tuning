from flask import Flask, render_template, request, redirect, url_for
import subprocess
import time
import os
from werkzeug.utils import secure_filename

app = Flask(__name__)

# Define the path to the directory where commands need to be executed
COMMAND_DIR = './../../../../'

# Base directory of the current script
BASE_DIR = os.path.abspath(os.path.dirname(__file__))

# Path to the SQL files directory
SQL_FILES_DIR = os.path.join('./../../../..', 'docker-compose', 'tpch_workload_executor', 'queries', 'mysql', '0.25')

def run_commands_in_directory(directory, commands):
    original_dir = os.getcwd()  # Save the original directory
    try:
        os.chdir(directory)  # Temporarily change to the target directory
        # Execute each command in the list
        for command in commands:
            subprocess.run(command, shell=True)
            time.sleep(5)  # Simulating delay between commands
    finally:
        os.chdir(original_dir)  # Always return to the original directory

@app.route('/')
def index():
    run_commands_in_directory(COMMAND_DIR, [
        "make stop"
    ])
    return render_template('index.html')

@app.route('/submit-config', methods=['POST'])
def submit_config():
    # Retrieve form data
    dbms = request.form.get('dbms')
    database = request.form.get('database')
    host = request.form.get('host')
    port = request.form.get('port')
    user = request.form.get('user')
    password = request.form.get('password')
    tna = request.form.get('tna')
    num_runs = request.form.get('num_runs')
    interval_minutes = request.form.get('interval_minutes')

    # Get uploaded files
    sql_files = request.files.getlist('sql_files')
    additional_sql = request.form.get('additional_sql')

    # Create content for config files
    config_content = f"""{{"dbms": "{dbms}", "database": "{database}", "host": "{host}", "port": "{port}", "user": "{user}", "password": "{password}", "tna": "{tna}"}}"""

    # Define paths for config files
    mysql_config_path = os.path.join('./../../../..', 'docker-compose', 'tpch_workload_executor', 'mysql.config')
    mysql_docker_config_path = os.path.join('./../../../..', 'docker-compose', 'tpch_workload_executor', 'mysql_docker.config')

    # Save data to mysql.config
    with open(mysql_config_path, 'w') as file:
        file.write(config_content)

    # Save data to mysql_docker.config
    with open(mysql_docker_config_path, 'w') as file:
        file.write(config_content)

    # **New code to save num_runs and interval_minutes**
    # Define path for the txt file
    run_info_path = os.path.join('./../../../..', 'docker-compose', 'tpch_workload_executor', 'run_info.txt')

    # Create content for the txt file
    run_info_content = f"Number of Runs: {num_runs}\nInterval Minutes: {interval_minutes}"

    # Save data to run_info.txt
    with open(run_info_path, 'w') as file:
        file.write(run_info_content)

    # Ensure SQL_FILES_DIR exists
    os.makedirs(SQL_FILES_DIR, exist_ok=True)

    # Delete existing files in SQL_FILES_DIR
    for filename in os.listdir(SQL_FILES_DIR):
        file_path = os.path.join(SQL_FILES_DIR, filename)
        if os.path.isfile(file_path):
            os.remove(file_path)

    # Save uploaded .sql files
    for file in sql_files:
        if file.filename != '':
            filename = secure_filename(file.filename)
            if filename.lower().endswith('.sql'):
                file.save(os.path.join(SQL_FILES_DIR, filename))

    # Save additional SQL as 'additional.sql'
    if additional_sql:
        additional_sql_path = os.path.join(SQL_FILES_DIR, 'additional.sql')
        with open(additional_sql_path, 'w') as f:
            f.write(additional_sql)

    time.sleep(10)
    print("Configure success!")

    # After saving configurations, redirect to loading page
    return redirect(url_for('loading'))


@app.route('/loading')
def loading():
    return render_template('loading.html')

@app.route('/configure')
def configure():
    try:
        # Execute the necessary commands
        run_commands_in_directory(COMMAND_DIR, [
            "make stop",
            "docker system prune -a -f",
            "make all",
            "make deploy"
        ])

        # Simulate loading time
        time.sleep(5)

        # Redirect to the system (localhost)
        return redirect('http://localhost/')
    except Exception as e:
        return f"Erro ao configurar o sistema: {e}"

if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=5000,
        debug=False,        # sem modo debug
        use_reloader=False  # desabilita o watchdog/inotify
    )

