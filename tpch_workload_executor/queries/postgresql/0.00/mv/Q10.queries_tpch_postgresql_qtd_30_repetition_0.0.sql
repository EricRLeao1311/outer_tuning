/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1993-08-10' AND O_ORDERDATE < date '1993-08-10' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1997-10-20' AND O_ORDERDATE < date '1997-10-20' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-04-06' AND O_ORDERDATE < date '1996-04-06' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1993-05-18' AND O_ORDERDATE < date '1993-05-18' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1993-12-26' AND O_ORDERDATE < date '1993-12-26' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-03-30' AND O_ORDERDATE < date '1996-03-30' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1995-04-21' AND O_ORDERDATE < date '1995-04-21' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1995-04-25' AND O_ORDERDATE < date '1995-04-25' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1993-01-24' AND O_ORDERDATE < date '1993-01-24' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-01-16' AND O_ORDERDATE < date '1996-01-16' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-06-10' AND O_ORDERDATE < date '1996-06-10' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1992-01-04' AND O_ORDERDATE < date '1992-01-04' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1992-07-28' AND O_ORDERDATE < date '1992-07-28' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1998-01-14' AND O_ORDERDATE < date '1998-01-14' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1992-10-29' AND O_ORDERDATE < date '1992-10-29' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1994-08-31' AND O_ORDERDATE < date '1994-08-31' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1997-04-24' AND O_ORDERDATE < date '1997-04-24' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-11-16' AND O_ORDERDATE < date '1996-11-16' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1994-03-10' AND O_ORDERDATE < date '1994-03-10' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1994-05-14' AND O_ORDERDATE < date '1994-05-14' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1997-06-22' AND O_ORDERDATE < date '1997-06-22' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1994-09-04' AND O_ORDERDATE < date '1994-09-04' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1992-07-13' AND O_ORDERDATE < date '1992-07-13' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1995-03-07' AND O_ORDERDATE < date '1995-03-07' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1993-07-01' AND O_ORDERDATE < date '1993-07-01' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1993-05-29' AND O_ORDERDATE < date '1993-05-29' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1994-08-03' AND O_ORDERDATE < date '1994-08-03' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-06-13' AND O_ORDERDATE < date '1996-06-13' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1994-03-15' AND O_ORDERDATE < date '1994-03-15' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-10-22' AND O_ORDERDATE < date '1996-10-22' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
