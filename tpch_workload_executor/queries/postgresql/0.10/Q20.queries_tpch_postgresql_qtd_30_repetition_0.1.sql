/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%lavender%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1994-10-24' AND L_SHIPDATE < date '1994-10-24' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'KENYA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%blue%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1993-10-20' AND L_SHIPDATE < date '1993-10-20' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'FRANCE' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%white%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1997-08-04' AND L_SHIPDATE < date '1997-08-04' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'MOZAMBIQUE' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%seashell%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1998-11-30' AND L_SHIPDATE < date '1998-11-30' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'RUSSIA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%orchid%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1996-11-14' AND L_SHIPDATE < date '1996-11-14' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'IRAQ' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%cyan%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1996-05-18' AND L_SHIPDATE < date '1996-05-18' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'JORDAN' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%orchid%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1994-07-22' AND L_SHIPDATE < date '1994-07-22' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'IRAN' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%seashell%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1998-11-30' AND L_SHIPDATE < date '1998-11-30' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'RUSSIA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%sky%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1993-10-07' AND L_SHIPDATE < date '1993-10-07' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'INDIA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%seashell%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1995-06-20' AND L_SHIPDATE < date '1995-06-20' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'BRAZIL' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%sky%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1992-02-09' AND L_SHIPDATE < date '1992-02-09' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ALGERIA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%saddle%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1997-01-19' AND L_SHIPDATE < date '1997-01-19' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'CANADA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%white%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1994-05-01' AND L_SHIPDATE < date '1994-05-01' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'INDONESIA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%chocolate%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1995-09-18' AND L_SHIPDATE < date '1995-09-18' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'BRAZIL' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%pale%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1995-04-10' AND L_SHIPDATE < date '1995-04-10' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'RUSSIA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%navajo%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1993-04-25' AND L_SHIPDATE < date '1993-04-25' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'INDONESIA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%violet%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1993-12-26' AND L_SHIPDATE < date '1993-12-26' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'EGYPT' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%spring%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1992-03-20' AND L_SHIPDATE < date '1992-03-20' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'MOROCCO' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%white%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1997-11-27' AND L_SHIPDATE < date '1997-11-27' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'VIETNAM' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%moccasin%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1997-09-23' AND L_SHIPDATE < date '1997-09-23' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'JORDAN' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%moccasin%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1994-05-28' AND L_SHIPDATE < date '1994-05-28' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ALGERIA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%cyan%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1998-08-13' AND L_SHIPDATE < date '1998-08-13' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'MOZAMBIQUE' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%seashell%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1998-11-30' AND L_SHIPDATE < date '1998-11-30' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'RUSSIA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%black%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1996-08-16' AND L_SHIPDATE < date '1996-08-16' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'CHINA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%seashell%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1998-11-30' AND L_SHIPDATE < date '1998-11-30' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'RUSSIA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%black%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1996-01-08' AND L_SHIPDATE < date '1996-01-08' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'BRAZIL' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%navajo%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1992-08-22' AND L_SHIPDATE < date '1992-08-22' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'GERMANY' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%navajo%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1996-10-09' AND L_SHIPDATE < date '1996-10-09' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'ROMANIA' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%cornsilk%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1996-12-05' AND L_SHIPDATE < date '1996-12-05' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'MOZAMBIQUE' ORDER BY S_NAME;;
/* TPC_H Query 20 */ SELECT S_NAME, S_ADDRESS FROM SUPPLIER, NATION WHERE S_SUPPKEY IN (SELECT PS_SUPPKEY FROM PARTSUPP WHERE PS_PARTKEY IN (SELECT P_PARTKEY FROM PART WHERE P_NAME LIKE '%pink%') AND PS_AVAILQTY > (SELECT 0.5*sum(L_QUANTITY) as sum_quantity FROM LINEITEM WHERE L_PARTKEY = PS_PARTKEY AND L_SUPPKEY = PS_SUPPKEY AND L_SHIPDATE >= '1992-08-17' AND L_SHIPDATE < date '1992-08-17' + interval '1' year ) ) AND S_NATIONKEY = N_NATIONKEY AND N_NAME = 'BRAZIL' ORDER BY S_NAME;;
