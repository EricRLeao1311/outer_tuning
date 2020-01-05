FROM python:3
ADD *.py /
ADD mysql_docker.config /
RUN mv mysql_docker.config mysql.config
ADD requirements.txt /
ADD create_table_experiment_mysql.sql /
ADD queries/ /

RUN pip install -r requirements.txt

CMD [ "python", "./main.py", "mysql", "mysql", "EXPLAIN", "0.25" ]