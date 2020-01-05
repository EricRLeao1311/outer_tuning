/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'PERU') OR (NA.N_NAME = 'PERU' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1994-09-29' AND date '1994-09-29' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'UNITED STATES') OR (NA.N_NAME = 'UNITED STATES' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1995-10-26' AND date '1995-10-26' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'FRANCE') OR (NA.N_NAME = 'FRANCE' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1994-08-31' AND date '1994-08-31' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'MOROCCO') OR (NA.N_NAME = 'MOROCCO' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1995-03-08' AND date '1995-03-08' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'PERU') OR (NA.N_NAME = 'PERU' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1994-09-29' AND date '1994-09-29' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'SAUDI ARABIA') OR (NA.N_NAME = 'SAUDI ARABIA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1992-03-01' AND date '1992-03-01' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'MOZAMBIQUE') OR (NA.N_NAME = 'MOZAMBIQUE' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1998-04-02' AND date '1998-04-02' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'PERU') OR (NA.N_NAME = 'PERU' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1994-09-29' AND date '1994-09-29' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'ETHIOPIA') OR (NA.N_NAME = 'ETHIOPIA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1992-09-28' AND date '1992-09-28' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'PERU') OR (NA.N_NAME = 'PERU' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1994-09-29' AND date '1994-09-29' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'CANADA') OR (NA.N_NAME = 'CANADA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1996-04-11' AND date '1996-04-11' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'RUSSIA') OR (NA.N_NAME = 'RUSSIA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1996-09-13' AND date '1996-09-13' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'ALGERIA') OR (NA.N_NAME = 'ALGERIA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1992-10-17' AND date '1992-10-17' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'PERU') OR (NA.N_NAME = 'PERU' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1994-09-29' AND date '1994-09-29' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'SAUDI ARABIA') OR (NA.N_NAME = 'SAUDI ARABIA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1992-08-20' AND date '1992-08-20' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'ARGENTINA') OR (NA.N_NAME = 'ARGENTINA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1998-06-24' AND date '1998-06-24' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'CANADA') OR (NA.N_NAME = 'CANADA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1994-12-03' AND date '1994-12-03' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'PERU') OR (NA.N_NAME = 'PERU' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1994-09-29' AND date '1994-09-29' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'MOZAMBIQUE') OR (NA.N_NAME = 'MOZAMBIQUE' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1995-02-16' AND date '1995-02-16' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'PERU') OR (NA.N_NAME = 'PERU' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1994-09-29' AND date '1994-09-29' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'CANADA') OR (NA.N_NAME = 'CANADA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1993-04-04' AND date '1993-04-04' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'INDONESIA') OR (NA.N_NAME = 'INDONESIA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1997-03-20' AND date '1997-03-20' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'PERU') OR (NA.N_NAME = 'PERU' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1992-09-21' AND date '1992-09-21' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'UNITED KINGDOM') OR (NA.N_NAME = 'UNITED KINGDOM' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1993-07-22' AND date '1993-07-22' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'PERU') OR (NA.N_NAME = 'PERU' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1994-09-29' AND date '1994-09-29' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'JORDAN') OR (NA.N_NAME = 'JORDAN' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1998-07-19' AND date '1998-07-19' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'MOROCCO') OR (NA.N_NAME = 'MOROCCO' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1997-02-02' AND date '1997-02-02' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'INDONESIA') OR (NA.N_NAME = 'INDONESIA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1995-02-20' AND date '1995-02-20' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'JORDAN') OR (NA.N_NAME = 'JORDAN' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1993-02-17' AND date '1993-02-17' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
/* TPC_H Query 7 */ SELECT NA_N_NAME, NB_N_NAME, L_YEAR, SUM(VOLUME) AS REVENUE FROM (SELECT NA.N_NAME AS NA_N_NAME, NB.N_NAME AS NB_N_NAME, date_part('year', L_SHIPDATE) AS L_YEAR, L_EXTENDEDPRICE*(1-L_DISCOUNT) AS VOLUME FROM SUPPLIER, LINEITEM, ORDERS, CUSTOMER, NATION NA, NATION NB WHERE S_SUPPKEY = L_SUPPKEY AND O_ORDERKEY = L_ORDERKEY AND C_CUSTKEY = O_CUSTKEY AND S_NATIONKEY = NA.N_NATIONKEY AND C_NATIONKEY = NB.N_NATIONKEY AND ((NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'ETHIOPIA') OR (NA.N_NAME = 'ETHIOPIA' AND NB.N_NAME = 'EUROPE')) AND L_SHIPDATE BETWEEN '1997-10-29' AND date '1997-10-29' + interval '1' year ) AS SHIPPING GROUP BY NA_N_NAME, NB_N_NAME, L_YEAR ORDER BY NA_N_NAME, NB_N_NAME, L_YEAR;;
