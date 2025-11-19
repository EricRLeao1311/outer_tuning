import collections
import csv
import json
import multiprocessing
import os
import re
import sys
import time
from os import listdir
from os.path import isfile, join
from pprint import pprint

import cx_Oracle
import matplotlib.pyplot as plt
import mysql.connector
import numpy as np
import pandas as pd
import pandas.io.sql as pdsql
import psycopg2

def get_file_safe_to_write(filename, operation_type):
    i = 0
    while i < 60:
        i += 1
        try:
            file = open(filename, operation_type, encoding="utf8")
            return file
        except Exception as e:
            time.sleep(1)
            print(str(e))
        print(filename + ' open try ' + str(i))
    print('File error: ' + filename)
    return None


def read_ddl_file(filename, lower=False):
    ouput = ''
    with open(filename, 'r') as f:
        lines = f.readlines()
    for line in lines:
        if len(line.rstrip()) > 0 and '--' not in line:
            ouput += line
    return [x.rstrip() for x in ouput.split(';') if len(x.rstrip()) > 0]


def write_list_file(data, filename):
    line = ''
    for value in data:
        if line:
            line += ','
        line += str(value)
    with get_file_safe_to_write(filename, 'a+') as f:
        f.write(line + '\n')


def write_log_file(data, filename):
    with get_file_safe_to_write(filename, 'a+') as f:
        f.write(data + '\n')


def get_thread_number():
    return multiprocessing.cpu_count() - 1


def params_inn_to_str(params_inn):
    output = ''
    for key, value in params_inn.items():
        if 'conn' not in key and 'file' not in key:
            output += '_' + str(value)
    print(output)
    return output


def get_chart_file_name(params_inn, test):
    return 'output' + os.sep + 'chart_results_' + test + '_' + params_inn_to_str(params_inn)


def create_bar_charts(params_inn, test, exceptions):
    if 'postgresql' in params_inn['dbms']:
        query = 'select distinct experiment_number, test_name from agent.experiment order by experiment_number'
    if 'oracle' in params_inn['dbms']:
        query = 'select distinct experiment_number, test_name from experiment order by experiment_number'
    if 'mysql' in params_inn['dbms']:
        query = 'select distinct experiment_number, test_name from experiment order by experiment_number'
    conn = db_connection(params_inn['database'])
    df_en = query_to_df(query, conn)
    df_en.columns = map(str.lower, df_en.columns)
    df = pd.DataFrame()
    y_names = []
    labels = []
    for index, row in df_en.iterrows():
        test_name = str(row['test_name']).lower().strip() + '_' + str(row['experiment_number']).lower()
        if 'postgresql' in params_inn['dbms']:
            query = 'select query_name, mean_cost as ' + test_name + ' from agent.experiment where experiment_number = ' + str(
                row['experiment_number']) + ' ' + exceptions + ' order by query_name'
        if 'oracle' in params_inn['dbms']:
            query = 'select query_name, mean_cost as ' + test_name + ' from experiment where experiment_number = ' + str(
                row['experiment_number']) + ' ' + exceptions + ' order by query_name'
        y_names.append(test_name)
        df1 = query_to_df(query, conn)
        df1.columns = map(str.lower, df1.columns)
        if df is not None and df.shape[0] > 0:
            df = pd.merge(df, df1, on="query_name")
        else:
            df = df1
    if not df.empty:
        df['query_name'] = df['query_name'].str.strip()
        print(df)
        df.to_csv(get_chart_file_name(params_inn, test) + '_' + params_inn['repetition'] + '.csv')
        df.plot(x="query_name", y=y_names, kind="bar")
        fig = plt.gcf()
        fig.savefig(get_chart_file_name(params_inn, test) + '.png', dpi=300, bbox_inches="tight")
        fig.clear()
        plt.clf()
    conn.close()
    return params_inn


def extract_tna_names(ddl):
    tna_list = re.findall(r'\S+_tap_\S+', str(ddl.lower()))
    if len(tna_list) == 0:
        tna_list = re.findall(r'\S+_dexter_\S+', str(ddl.lower()))
    if len(tna_list) == 0:
        tna_list = re.findall(r'\S+_powa_\S+', str(ddl.lower()))

    for i in range(0, len(tna_list)):
        tna_list[i] = tna_list[i].split('.')[0]
    output = []
    for tna in tna_list:
        if tna not in output:
            output.append(tna)
    return output


def get_file_safe_to_write(filename, operation_type):
    i = 0
    while i < 60:
        i += 1
        try:
            file = open(filename, operation_type, encoding="utf8")
            return file
        except Exception as e:
            time.sleep(1)
            print('Error <get_file_safe_to_write>: ' + str(e))
        print(filename + ' open try ' + str(i))
    print('File error: ' + filename)
    return None


def get_db_config(database):
    file = get_file_safe_to_write(database + ".config", 'r')
    data = json.load(file)
    file.close()
    return data


def db_connection(database):
    config = get_db_config(database)
    if config['dbms'] in 'oracle':
        return oracle_connection(config)
    if config['dbms'] in 'postgresql':
        return postgresql_connection(config)
    if config['dbms'] in 'mysql':
        return mysql_connection(config)


def mysql_connection(config, max_tries=30, wait_seconds=10):
    attempt = 0
    while attempt < max_tries:
        try:
            print(f"Tentando conectar no MySQL (tentativa {attempt + 1}/{max_tries})...")
            cnx = mysql.connector.connect(
                user=config['user'],
                password=config['password'],
                host=config['host'],
                database=config['database'],
            )

            # Liga logs
            cursor = cnx.cursor()
            cursor.execute("SET GLOBAL log_output = 'TABLE'")
            cursor.execute("SET GLOBAL general_log = 'ON'")
            cursor.close()

            # Garante que a tabela lineitem já foi carregada
            number_of_rows = 0
            while number_of_rows == 0:
                cursor = cnx.cursor()
                cursor.execute("SELECT count(*) FROM lineitem")
                number_of_rows = cursor.fetchone()[0]
                cursor.close()
                if number_of_rows == 0:
                    print("Tabela lineitem ainda vazia, aguardando carga...")
                    time.sleep(2)

            print("Conectado ao MySQL e tabela lineitem já carregada.")
            return cnx

        except Exception as err:
            attempt += 1
            print(f"Error <mysql_connection> tentativa {attempt}/{max_tries}: {err}")
            if attempt >= max_tries:
                print("Não foi possível conectar ao MySQL após várias tentativas, abortando.")
                sys.exit(1)
            time.sleep(wait_seconds)



def postgresql_connection(config):
    try:
        conn = psycopg2.connect("dbname='" + config['database'] + "' user='" + config['user'] + "' host='" + config[
            'host'] + "' password='" + config['password'] + "'")
        conn.autocommit = True
        print('Connected database ' + config['database'] + ': ' + str(config))
        return conn
    except Exception as e:
        print('Error <postgresql_connection>: ', config)
        print('Error <postgresql_connection>: ' + str(e))
        exit()


def oracle_connection(config):
    try:
        conn = cx_Oracle.connect(config['user'], config['password'], config['host'] + '/' + config['tna'])
        print('Connected database ' + config['database'] + ': ' + str(config))
        return conn
    except Exception as e:
        print('Error <oracle_connection>: ', config)
        print('Error <oracle_connection>: ' + str(e))
        exit()


def query_to_df(query, conn):
    df = None
    try:
        cursor = conn.cursor()
        df = pdsql.read_sql_query(query, conn)
    except Exception as e:
        print(str(e))
    finally:
        cursor.close()
    return df


def write_dict_to_csv_file(data, filename, opentype='a+'):
    if not os.path.isfile(filename):
        with get_file_safe_to_write(filename, opentype) as f:
            wr = csv.writer(f, lineterminator='\n')
            wr.writerow(data)
    with get_file_safe_to_write(filename, opentype) as f:
        wr = csv.writer(f, lineterminator='\n')
        wr.writerow(data.values())


def save_test_csv_file(results, params_inn):
    data = {}
    for key, values in results.items():
        data[key] = np.mean(values)
    filename = 'output' + os.sep + 'results_' + params_inn['dbms'] + '_experiment_' + str(
        params_inn['experiment_number']) + '_' + params_inn['repetition'] + '.csv'
    data = dict(sorted(data.items()))
    if os.path.exists(filename):
        os.remove(filename)
    write_dict_to_csv_file(data, filename)


def extract_used_tuning_actions(params_inn, tna):
    tna_list = extract_tna_names(tna)
    total_mv = []
    total_id = []
    total_pid = []
    for tna_action in tna_list:
        if 'pid_' in tna_action.lower():
            total_pid.append(tna_action)
        else:
            if 'id_' in tna_action.lower():
                total_id.append(tna_action)
            else:
                if 'mv_' in tna_action.lower():
                    total_mv.append(tna_action)
    text_file_count = str(params_inn['experiment_number']) + '_tna_count.csv'
    total_count = params_inn['query_name'] + ',' + str(len(total_mv)) + ',' + str(len(total_id)) + ',' + str(
        len(total_pid)) + ',' + str(len(set(total_mv))) + ',' + str(len(set(total_id))) + ',' + str(len(set(total_pid)))
    write_log_file(total_count, 'output' + os.sep + text_file_count)

    text_file = str(params_inn['experiment_number']) + '-' + params_inn['query_name'] + ': ' + str(tna_list)
    print(text_file)
    write_log_file(text_file, 'output' + os.sep + 'tna_' + params_inn['query_name'] + '.txt')


def write_dexter_log(params_inn, duration, query):
    if os.name != 'nt':
        data = 'LOG:  durationexecute_sql_mysql: ' + str(duration) + ' ms  statement:  ' + query.replace('\t',
                                                                                                         '').replace(
            '\n',
            '') + ';'
        write_log_file(data, params_inn['log_dexter'])


def execute_sql(params_inn, sql):
    if 'oracle' in params_inn['dbms']:
        return execute_sql_oracle(params_inn, sql)
    if 'postgresql' in params_inn['dbms']:
        return execute_sql_postgresql(params_inn, sql)
    if 'mysql' in params_inn['dbms']:
        return execute_sql_mysql(params_inn, sql)


def execute_sql_mysql(params_inn, sql):
    cost = 0
    if params_inn['conn']:
        cursor = params_inn['conn'].cursor(buffered=True)
        if "explain" in params_inn['explain']:
            query = params_inn['explain'] + ' ' + sql
        else:
            query = sql
        print(query)
        begin = time.time()
        cursor.execute(query)
        end = time.time()
        duration = (end - begin)
        write_dexter_log(params_inn, duration, query)
        if 'explain' in params_inn['explain']:
            query += '\n'
            for row in cursor:
                query += '\n' + str(row[0])
                if cost == 0:
                    if 'analyze' in params_inn['explain']:
                        cost = re.search('cost=(.*)actual time=', str(row))
                        cost = float(re.search('(.*)rows=', str(cost)).group(1).split('..')[1].split(' ')[0])
                    else:
                        cost = float(re.search('cost=(.*)rows=', str(row)).group(1).split('..')[1].split(' ')[0])
        else:
            cost = duration
        cursor.close()
        query += '\n'
    write_log_file(query, params_inn['explain_file'])
    if 'explain ' in query:
        extract_used_tuning_actions(params_inn, query)
    return cost


def execute_sql_oracle(params_inn, sql):
    cost = 0
    if params_inn['conn']:
        cursor = params_inn['conn'].cursor()
        if 'explain' in params_inn['explain']:
            query = "EXPLAIN PLAN SET STATEMENT_ID = '" + extract_query_name(sql) + "' FOR " + sql
            cursor.execute(query)
            query = "select plan_id, cost from PLAN_TABLE where plan_id in (select max(plan_id) from PLAN_TABLE where statement_id = '" + extract_query_name(
                sql) + "' and id=0) and statement_id = '" + extract_query_name(sql) + "' and id=0"
        else:
            query = sql
        print(query)
        begin = time.time()
        cursor.execute(query)
        end = time.time()
        duration = (end - begin)
        write_dexter_log(params_inn, duration, query)
        if 'explain' in params_inn['explain']:
            for row in cursor:
                cost = row[1]
        else:
            cost = duration
        cursor.close()
        query += '\n'
    write_log_file(query, params_inn['explain_file'])
    if 'explain ' in query:
        extract_used_tuning_actions(params_inn, query)
    return cost


def execute_sql_postgresql(params_inn, sql):
    cost = 0
    if params_inn['conn']:
        cursor = params_inn['conn'].cursor()
        if "explain" in params_inn['explain']:
            query = params_inn['explain'] + ' ' + sql
        else:
            query = sql
        print(query)
        begin = time.time()
        cursor.execute(query)
        end = time.time()
        duration = (end - begin)
        write_dexter_log(params_inn, duration, query)
        if 'explain' in params_inn['explain']:
            query += '\n'
            for row in cursor:
                query += '\n' + str(row[0])
                if cost == 0:
                    if 'analyze' in params_inn['explain']:
                        cost = re.search('cost=(.*)actual time=', str(row))
                        cost = float(re.search('(.*)rows=', str(cost)).group(1).split('..')[1].split(' ')[0])
                    else:
                        cost = float(re.search('cost=(.*)rows=', str(row)).group(1).split('..')[1].split(' ')[0])
        else:
            cost = duration
        cursor.close()
        query += '\n'
    write_log_file(query, params_inn['explain_file'])
    if 'explain ' in query:
        extract_used_tuning_actions(params_inn, query)
    return cost


def extract_query_name(name):
    print(name)
    return 'Q' + name.split('*/')[0].split('Query')[1].strip()


def execute_file_queries(params_inn, queries):
    values = []
    try:
        for sql in queries:
            if sql.strip():
                values.append(execute_sql(params_inn, sql))
    except Exception as e:
        print('Error <execute_file_queries>:' + str(e))
        sys.exit(1)
    return values


def workload_execute(params_inn):
    print('Executing: workload_execute')
    path = 'queries' + os.sep + params_inn['dbms'] + os.sep + params_inn['repetition'] + os.sep
    print(f"Caminho das queries: {path}")
    if params_inn['mv']:
        path = path + 'mv' + os.sep
    files = [f for f in listdir(path) if isfile(join(path, f))]
    print(f"Arquivos encontrados: {files}")
    all_queries = []
    shuffled_queries = []
    for item in files:
        if '.sql' in item:
            all_queries.append(read_ddl_file(path + os.sep + item))
    size = len(all_queries[0])
    for i in range(0, size):
        for queries in all_queries:
            if i < len(queries):
                shuffled_queries.append(queries[i])

    results = {}
    for item in shuffled_queries:
        query_name = extract_query_name(item)
        params_inn['query_name'] = query_name
        if query_name not in results:
            results[query_name] = []
        results[query_name].append(execute_sql(params_inn, item))
        save_test_csv_file(results, params_inn)

    filename_raw = 'output' + os.sep + 'results_raw_' + params_inn['dbms'] + '_experiment_' + str(
        params_inn['experiment_number']) + '_' + params_inn['repetition'] + '.csv'
    output = {}
    for key, values in results.items():
        print()
        if int(key[1:]) < 10:
            key = 'Q0' + key[1:]
        output[key] = values
    output = collections.OrderedDict(sorted(output.items()))
    results = pd.DataFrame(output)
    results.to_csv(filename_raw)
    return params_inn


def get_file_safe_to_write(filename, operation_type):
    i = 0
    while i < 60:
        i += 1
        try:
            file = open(filename, operation_type, encoding="utf8")
            return file
        except Exception as e:
            time.sleep(1)
            print('Error <get_file_safe_to_write>: ' + str(e))
        print(filename + ' open try ' + str(i))
    print('File error: ' + filename)
    return None


def get_db_config(database):
    file = get_file_safe_to_write(database + ".config", 'r')
    data = json.load(file)
    file.close()
    return data


def execute_tna(params_inn):
    print('Executing: execute_tna')
    if params_inn['conn']:
        ddls = read_ddl_file(params_inn['ddl_file'])
        if os.path.exists(params_inn['log_file']):
            os.remove(params_inn['log_file'])
        for ddl in ddls:
            try:
                if ddl and ddl.strip() and '--' not in ddl:
                    print('EXECUTING: ' + ddl)
                    cursor = params_inn['conn'].cursor()
                    cursor.execute(ddl)
                    cursor.close()
                    write_log_file(ddl, params_inn['log_file'])
            except Exception as e:
                write_log_file(str(e), params_inn['log_file'])
                print(str(e))
                cursor.close()
    return params_inn


def get_next_experiment_number(params_inn):
    file_name = 'output' + os.sep + params_inn['database'] + '.count'
    last = 0
    if os.path.isfile(file_name):
        f = open(file_name, "r")
        last = int(f.readline())
        f.close()
    if not last:
        last = 0
    last = last + 1
    f = open(file_name, "w")
    f.write(str(last))
    f.close()
    return last


def execute_test(params_inn):
    params_inn['test_name'] = params_inn['database']
    params_inn['explain_file'] = 'output' + os.sep + params_inn['database'] + '_explain.txt'
    params_inn['experiment_number'] = get_next_experiment_number(params_inn)
    params_inn = workload_execute(params_inn)
    return params_inn


def execute_test_and_charts(database, dbms, explain, mv, repetition):
    params_inn = get_parameters(database, explain=explain)
    params_inn['dbms'] = dbms
    params_inn['mv'] = '1' in mv
    params_inn['repetition'] = repetition
    params_inn = execute_test(params_inn)


def get_parameters(database, explain='explain'):
    params_inn = get_db_config(database)
    params_inn['explain'] = explain
    params_inn['database'] = database
    params_inn['log_file'] = params_inn['database'] + '_log.txt'
    params_inn['log_dexter'] = params_inn['database'] + '_log_dexter.txt'
    params_inn['conn'] = db_connection(params_inn['database'])
    pprint(params_inn)
    return params_inn

BASE_DIR = os.path.abspath(os.path.dirname(__file__))

def get_run_info():
    try:
        with open("./docker-compose/tpch_workload_executor/run_info.txt", 'r') as f:
            lines = f.readlines()
        num_runs = 1
        interval_minutes = 0
        for line in lines:
            if 'Number of Runs' in line:
                num_runs = int(line.strip().split(':')[1])
            elif 'Interval Minutes' in line:
                interval_minutes = int(line.strip().split(':')[1])
        return num_runs, interval_minutes
    except FileNotFoundError:
        print("run_info.txt not found, defaulting to 3 run and 3 minutes interval.")
        return 3, 3

if __name__ == '__main__':
    # time.sleep(60)
    database = str(sys.argv[1].split('.')[0])
    dbms = str(sys.argv[2])
    explain = str(sys.argv[3])
    repetition = str(sys.argv[4])
    print(f"Repetition: {repetition}")
    num_runs, interval_minutes = get_run_info()
    interval_seconds = interval_minutes * 60
    print(f"Number of runs: {num_runs}, Interval between runs: {interval_minutes} minutes")

    while num_runs > 0:
        print(f"Run {num_runs} of {num_runs}")
        execute_test_and_charts(database, dbms, explain, '', repetition)
        print('done!')
        print(f"Waiting for {interval_minutes} minutes before next run...")
        time.sleep(interval_seconds)
        num_runs -= 1
    while True:
        time.sleep(60 * 60 * 24)
