/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 38 AND P_TYPE LIKE '%%SMALL ANODIZED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 2 AND P_TYPE LIKE '%%ECONOMY BURNISHED BRASS' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 48 AND P_TYPE LIKE '%%ECONOMY BRUSHED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 11 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AMERICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 7 AND P_TYPE LIKE '%%MEDIUM BRUSHED TIN' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 20 AND P_TYPE LIKE '%%PROMO PLATED TIN' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 50 AND P_TYPE LIKE '%%SMALL POLISHED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 7 AND P_TYPE LIKE '%%ECONOMY ANODIZED STEEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 41 AND P_TYPE LIKE '%%ECONOMY BRUSHED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 40 AND P_TYPE LIKE '%%ECONOMY POLISHED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'ASIA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 44 AND P_TYPE LIKE '%%SMALL ANODIZED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 9 AND P_TYPE LIKE '%%SMALL BRUSHED TIN' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 7 AND P_TYPE LIKE '%%MEDIUM BURNISHED COPPER' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'MIDDLE EAST') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 47 AND P_TYPE LIKE '%%SMALL BRUSHED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 20 AND P_TYPE LIKE '%%SMALL POLISHED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'AFRICA') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;
/* TPC_H Query 2 */ SELECT S_ACCTBAL, S_NAME, N_NAME, P_PARTKEY, P_MFGR, S_ADDRESS, S_PHONE, S_COMMENT FROM PART, SUPPLIER, PARTSUPP, NATION, REGION WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND P_SIZE = 23 AND P_TYPE LIKE '%%SMALL PLATED NICKEL' AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE' AND PS_SUPPLYCOST = (SELECT MIN(MIN_SUPPLY) FROM mv_tap_q2 WHERE P_PARTKEY = PS_PARTKEY AND S_SUPPKEY = PS_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_REGIONKEY = R_REGIONKEY AND R_NAME = 'EUROPE') ORDER BY S_ACCTBAL DESC, N_NAME, S_NAME, P_PARTKEY LIMIT 100;;