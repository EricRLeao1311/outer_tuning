/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'VIETNAM' and n2.n_name = 'JORDAN') or (n1.n_name = 'RUSSIA' and n2.n_name = 'GERMANY') ) and l_shipdate between date '1998-10-04' and (date '1998-10-04' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'KENYA' and n2.n_name = 'VIETNAM') or (n1.n_name = 'ETHIOPIA' and n2.n_name = 'VIETNAM') ) and l_shipdate between date '1992-09-23' and (date '1992-09-23' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'ARGENTINA' and n2.n_name = 'ARGENTINA') or (n1.n_name = 'RUSSIA' and n2.n_name = 'PERU') ) and l_shipdate between date '1998-10-18' and (date '1998-10-18' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'CANADA' and n2.n_name = 'MOROCCO') or (n1.n_name = 'UNITED KINGDOM' and n2.n_name = 'VIETNAM') ) and l_shipdate between date '1998-05-27' and (date '1998-05-27' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'INDIA' and n2.n_name = 'SAUDI ARABIA') or (n1.n_name = 'UNITED KINGDOM' and n2.n_name = 'RUSSIA') ) and l_shipdate between date '1994-06-13' and (date '1994-06-13' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'PERU' and n2.n_name = 'CANADA') or (n1.n_name = 'FRANCE' and n2.n_name = 'JORDAN') ) and l_shipdate between date '1994-08-31' and (date '1994-08-31' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'INDIA' and n2.n_name = 'SAUDI ARABIA') or (n1.n_name = 'UNITED KINGDOM' and n2.n_name = 'RUSSIA') ) and l_shipdate between date '1994-06-13' and (date '1994-06-13' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'UNITED STATES' and n2.n_name = 'UNITED STATES') or (n1.n_name = 'KENYA' and n2.n_name = 'ROMANIA') ) and l_shipdate between date '1994-11-08' and (date '1994-11-08' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'IRAQ' and n2.n_name = 'MOZAMBIQUE') or (n1.n_name = 'ROMANIA' and n2.n_name = 'PERU') ) and l_shipdate between date '1997-04-05' and (date '1997-04-05' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'INDIA' and n2.n_name = 'SAUDI ARABIA') or (n1.n_name = 'UNITED KINGDOM' and n2.n_name = 'RUSSIA') ) and l_shipdate between date '1994-06-13' and (date '1994-06-13' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'ETHIOPIA' and n2.n_name = 'ROMANIA') or (n1.n_name = 'SAUDI ARABIA' and n2.n_name = 'RUSSIA') ) and l_shipdate between date '1998-04-15' and (date '1998-04-15' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'EGYPT' and n2.n_name = 'ROMANIA') or (n1.n_name = 'MOZAMBIQUE' and n2.n_name = 'ARGENTINA') ) and l_shipdate between date '1993-11-23' and (date '1993-11-23' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'INDIA' and n2.n_name = 'SAUDI ARABIA') or (n1.n_name = 'UNITED KINGDOM' and n2.n_name = 'RUSSIA') ) and l_shipdate between date '1994-06-13' and (date '1994-06-13' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'INDIA' and n2.n_name = 'SAUDI ARABIA') or (n1.n_name = 'UNITED KINGDOM' and n2.n_name = 'RUSSIA') ) and l_shipdate between date '1994-06-13' and (date '1994-06-13' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'ARGENTINA' and n2.n_name = 'ALGERIA') or (n1.n_name = 'EGYPT' and n2.n_name = 'MOZAMBIQUE') ) and l_shipdate between date '1998-04-29' and (date '1998-04-29' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'ALGERIA' and n2.n_name = 'IRAQ') or (n1.n_name = 'RUSSIA' and n2.n_name = 'MOZAMBIQUE') ) and l_shipdate between date '1995-03-11' and (date '1995-03-11' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'ETHIOPIA' and n2.n_name = 'MOZAMBIQUE') or (n1.n_name = 'VIETNAM' and n2.n_name = 'PERU') ) and l_shipdate between date '1995-02-22' and (date '1995-02-22' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'BRAZIL' and n2.n_name = 'IRAN') or (n1.n_name = 'MOZAMBIQUE' and n2.n_name = 'IRAN') ) and l_shipdate between date '1996-08-09' and (date '1996-08-09' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'INDIA' and n2.n_name = 'SAUDI ARABIA') or (n1.n_name = 'UNITED KINGDOM' and n2.n_name = 'RUSSIA') ) and l_shipdate between date '1994-06-13' and (date '1994-06-13' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'CANADA' and n2.n_name = 'BRAZIL') or (n1.n_name = 'PERU' and n2.n_name = 'INDIA') ) and l_shipdate between date '1997-08-07' and (date '1997-08-07' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'UNITED STATES' and n2.n_name = 'KENYA') or (n1.n_name = 'CHINA' and n2.n_name = 'FRANCE') ) and l_shipdate between date '1994-02-27' and (date '1994-02-27' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'INDIA' and n2.n_name = 'SAUDI ARABIA') or (n1.n_name = 'UNITED KINGDOM' and n2.n_name = 'RUSSIA') ) and l_shipdate between date '1994-06-13' and (date '1994-06-13' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'ALGERIA' and n2.n_name = 'EGYPT') or (n1.n_name = 'IRAN' and n2.n_name = 'ALGERIA') ) and l_shipdate between date '1994-03-01' and (date '1994-03-01' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'INDIA' and n2.n_name = 'SAUDI ARABIA') or (n1.n_name = 'UNITED KINGDOM' and n2.n_name = 'RUSSIA') ) and l_shipdate between date '1994-06-13' and (date '1994-06-13' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'RUSSIA' and n2.n_name = 'ALGERIA') or (n1.n_name = 'RUSSIA' and n2.n_name = 'EGYPT') ) and l_shipdate between date '1994-10-19' and (date '1994-10-19' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'KENYA' and n2.n_name = 'JORDAN') or (n1.n_name = 'SAUDI ARABIA' and n2.n_name = 'JAPAN') ) and l_shipdate between date '1994-04-22' and (date '1994-04-22' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'CHINA' and n2.n_name = 'ALGERIA') or (n1.n_name = 'ARGENTINA' and n2.n_name = 'ARGENTINA') ) and l_shipdate between date '1997-03-28' and (date '1997-03-28' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'VIETNAM' and n2.n_name = 'UNITED STATES') or (n1.n_name = 'EGYPT' and n2.n_name = 'EGYPT') ) and l_shipdate between date '1994-05-15' and (date '1994-05-15' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'UNITED KINGDOM' and n2.n_name = 'BRAZIL') or (n1.n_name = 'UNITED STATES' and n2.n_name = 'JAPAN') ) and l_shipdate between date '1994-04-11' and (date '1994-04-11' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
/* TPC_H Query 7 */ select supp_nation, cust_nation, l_year, sum(volume) revenue from ( select n1.n_name supp_nation, n2.n_name cust_nation, cast(SUBSTR(cast(l_shipdate AS VARCHAR2(30)),7, 2) AS INT) l_year, l_extendedprice * (1 - l_discount) volume from h_supplier, h_lineitem, h_order, h_customer, h_nation n1, h_nation n2 where s_suppkey = l_suppkey and o_orderkey = l_orderkey and c_custkey = o_custkey and s_nationkey = n1.n_nationkey and c_nationkey = n2.n_nationkey and ( (n1.n_name = 'INDIA' and n2.n_name = 'ROMANIA') or (n1.n_name = 'BRAZIL' and n2.n_name = 'IRAN') ) and l_shipdate between date '1992-06-16' and (date '1992-06-16' + interval '1' year) ) shipping group by supp_nation, cust_nation, l_year order by supp_nation, cust_nation, l_year;
