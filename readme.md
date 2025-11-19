## Pré-requisitos
- Docker
- Docker Compose
- Python 3.8+
- Java 17
- Maven Wrapper (já incluso)
- WSL2 (para Windows)

## Estrutura do Projeto
```
outer_tuning/
├── docker-compose/
├── src/main/webapp/Initializer/
│   ├── start_system.py
│   ├── templates/
│   └── static/
├── Makefile
└── pom.xml
```

## Executando via Interface Web
```
cd outer_tuning/src/main/webapp/Initializer
python3 start_system.py
```
Acesse: http://127.0.0.1:5000

O formulário configura:
- mysql.config
- mysql_docker.config
- run_info.txt
- Salvamento dos arquivos SQL

E executa internamente:
- make stop
- docker system prune -a -f
- make all
- make deploy

## Execução Manual
### Parar containers
```
docker system prune -a
```
ou
```
make stop
```

### Buildar
```
make all
```

### Subir containers
```
make deploy
```

### Acessar o sistema
```
http://localhost/
```

## Banco de Dados MySQL
Login:
```
mysql -uroot -pexample mysql
```

Tabelas TPCH:
customer, lineitem, nation, orders, part, partsupp, region, supplier

## Aviso sobre pull access denied
O Docker tenta baixar `workload-executor`, mas como não existe no Docker Hub, mostra WARNING.
O build local continua normalmente.

## Resumo
- Rodar interface:
```
cd outer_tuning/src/main/webapp/Initializer
python3 start_system.py
```
- Manual:
```
make all
make deploy
```
- Parar:
```
make stop
```
