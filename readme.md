# Mysql

O docker-compose ja esta sendo criando e populando as tabelas:

| Tables_in_mysql |
| --------------- |
| customer |
| lineitem |
| nation |
| orders |
| part |
| partsupp |
| region |
| supplier |

### Docker-compose

```yml
services:
  mysql:
    image: mysql:8.0.18
    command: --default-authentication-plugin=mysql_native_password --secure-file-priv=/opt --lower-case-table-names=1
    restart: always
    ports:
      - 33061:33060
    volumes:
      - ./tpch_load_data_test:/opt
      - ./tpch_load_data_test/load.sh:/docker-entrypoint-initdb.d/load.sh
    environment:
      MYSQL_ROOT_PASSWORD: example
      MYSQL_DATABASE: mysql
```

`running: docker-compose -f databases.yml up`

### Login banco

`mysql -uroot -pexample mysql`

# Postgres

### Tratar arquivos para postgres

`sed -ie 's/.$//' *.tbl`

### Docker-compose

```yml
  postgres:
    image: postgres:11
    restart: always
    volumes:
      - ./dbtest:/opt
    ports:
      - 5432:5432
    environment:
      POSTGRES_PASSWORD: example
```

### Running

`psql -U postgres -p example -d postgres  -p 5432`

>COPY nation FROM '/opt/nation.tbl' ( FORMAT CSV, DELIMITER ('|') );
>COPY region FROM '/opt/region.tbl' ( FORMAT CSV, DELIMITER ('|') );
>COPY part FROM '/opt/part.tbl' ( FORMAT CSV, DELIMITER ('|') );
>COPY supplier FROM '/opt/supplier.tbl' ( FORMAT CSV, DELIMITER ('|') );
>COPY partsupp FROM '/opt/partsupp.tbl' ( FORMAT CSV, DELIMITER ('|') );
>COPY customer FROM '/opt/customer.tbl' ( FORMAT CSV, DELIMITER ('|') );
>COPY orders FROM '/opt/orders.tbl' ( FORMAT CSV, DELIMITER ('|') );
>COPY lineitem FROM '/opt/lineitem.tbl' ( FORMAT CSV, DELIMITER ('|') );

# Oracle

### Docker-compose

```yml
  oracle:
    image: deepdiver/docker-oracle-xe-11g
    restart: always
    volumes:
      - ./dbtest-bkp:/opt
    ports:
      - 1521:1521
```

### Load

`echo "LOAD DATA  INFILE '/opt/customer.tbl' INTO TABLE CUSTOMER FIELDS TERMINATED BY '|'" > loader.ctl`

`sqlldr system/oracle@localhost:1521/XE control=loader.ctl`