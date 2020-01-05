/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 49 AND P_TYPE LIKE '%%ECONOMY BURNISHED TIN' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 22 AND P_TYPE LIKE '%%MEDIUM BURNISHED STEEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 16 AND P_TYPE LIKE '%%MEDIUM BRUSHED TIN' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 8 AND P_TYPE LIKE '%%MEDIUM POLISHED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 32 AND P_TYPE LIKE '%%ECONOMY BURNISHED BRASS' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 26 AND P_TYPE LIKE '%%SMALL ANODIZED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 14 AND P_TYPE LIKE '%%ECONOMY BURNISHED BRASS' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 22 AND P_TYPE LIKE '%%LARGE BURNISHED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 45 AND P_TYPE LIKE '%%LARGE POLISHED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL ANODIZED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 8 AND P_TYPE LIKE '%%MEDIUM BURNISHED STEEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 25 AND P_TYPE LIKE '%%MEDIUM BURNISHED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 34 AND P_TYPE LIKE '%%SMALL BRUSHED TIN' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 1 AND P_TYPE LIKE '%%PROMO POLISHED BRASS' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 33 AND P_TYPE LIKE '%%LARGE POLISHED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 18 AND P_TYPE LIKE '%%LARGE PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 16 AND P_TYPE LIKE '%%PROMO POLISHED BRASS' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 36 AND P_TYPE LIKE '%%ECONOMY BURNISHED BRASS' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 20 AND P_TYPE LIKE '%%LARGE POLISHED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 36 AND P_TYPE LIKE '%%MEDIUM BURNISHED STEEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 13 AND P_TYPE LIKE '%%ECONOMY POLISHED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 40 AND P_TYPE LIKE '%%SMALL BRUSHED BRASS' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 10 AND P_TYPE LIKE '%%PROMO PLATED TIN' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 40 AND P_TYPE LIKE '%%LARGE POLISHED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 8 AND P_TYPE LIKE '%%LARGE POLISHED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 24 AND P_TYPE LIKE '%%LARGE POLISHED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL ANODIZED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 10 AND P_TYPE LIKE '%%ECONOMY ANODIZED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 38 AND P_TYPE LIKE '%%ECONOMY BURNISHED BRASS' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 17 AND P_TYPE LIKE '%%SMALL POLISHED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA' AND PS_SUPPLYCOST = (SELECT MIN(PS_SUPPLYCOST) AS MIN_SUPPLY FROM PARTSUPP, SUPPLIER, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY limit 100;;
