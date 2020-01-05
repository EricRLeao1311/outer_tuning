/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'VIETNAM' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'IRAN') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'INDIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'CANADA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'PERU' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'RUSSIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ARGENTINA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'EGYPT') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ARGENTINA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ALGERIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'MOZAMBIQUE') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'JAPAN' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'IRAQ') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'INDIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'UNITED STATES') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'UNITED KINGDOM' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'UNITED STATES') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'KENYA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'PERU') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'INDIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'IRAQ') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ARGENTINA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'UNITED STATES') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'INDONESIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'JORDAN') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'UNITED KINGDOM' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'UNITED KINGDOM') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'INDIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'BRAZIL') ORDER BY VALUE DESC;;
/* TPC_H Query 11 */ SELECT PS_PARTKEY, SUM(PS_SUPPLYCOST*PS_AVAILQTY) AS VALUE FROM PARTSUPP, SUPPLIER, NATION WHERE PS_SUPPKEY = S_SUPPKEY AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' GROUP BY PS_PARTKEY HAVING SUM(PS_SUPPLYCOST*PS_AVAILQTY) > (SELECT SUM(cost_sum) as cost_sum FROM mv_tap_q11 WHERE S_NATIONKEY = N_NATIONKEY AND N_NAME = 'SAUDI ARABIA') ORDER BY VALUE DESC;;
