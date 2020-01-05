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

### Maven Build Locally

```
mvn clean install -DskipTests -f pom.xml
```

### Maven Build Docker

```
mvn clean install -P docker -DskipTests -f pom.xml
```

### Run Locally

```
mvn tomcat7:run -f pom.xml
```
