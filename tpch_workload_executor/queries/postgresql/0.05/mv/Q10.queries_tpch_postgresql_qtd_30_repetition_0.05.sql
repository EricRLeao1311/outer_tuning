/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1992-03-25' AND O_ORDERDATE < date '1992-03-25' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1995-06-27' AND O_ORDERDATE < date '1995-06-27' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-09-11' AND O_ORDERDATE < date '1996-09-11' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1995-08-17' AND O_ORDERDATE < date '1995-08-17' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1997-09-01' AND O_ORDERDATE < date '1997-09-01' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-05-31' AND O_ORDERDATE < date '1996-05-31' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1994-09-17' AND O_ORDERDATE < date '1994-09-17' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1992-11-02' AND O_ORDERDATE < date '1992-11-02' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-09-07' AND O_ORDERDATE < date '1996-09-07' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1993-01-08' AND O_ORDERDATE < date '1993-01-08' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-04-01' AND O_ORDERDATE < date '1996-04-01' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-06-08' AND O_ORDERDATE < date '1996-06-08' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-01-26' AND O_ORDERDATE < date '1996-01-26' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1998-07-29' AND O_ORDERDATE < date '1998-07-29' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1997-03-08' AND O_ORDERDATE < date '1997-03-08' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-03-30' AND O_ORDERDATE < date '1996-03-30' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1994-11-14' AND O_ORDERDATE < date '1994-11-14' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1997-10-20' AND O_ORDERDATE < date '1997-10-20' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1997-05-04' AND O_ORDERDATE < date '1997-05-04' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1998-01-05' AND O_ORDERDATE < date '1998-01-05' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-12-07' AND O_ORDERDATE < date '1996-12-07' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1996-12-09' AND O_ORDERDATE < date '1996-12-09' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1994-12-29' AND O_ORDERDATE < date '1994-12-29' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1995-04-30' AND O_ORDERDATE < date '1995-04-30' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1992-11-02' AND O_ORDERDATE < date '1992-11-02' + interval '3' month AND L_RETURNFLAG = 'R' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1995-10-03' AND O_ORDERDATE < date '1995-10-03' + interval '3' month AND L_RETURNFLAG = 'A' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1992-07-02' AND O_ORDERDATE < date '1992-07-02' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1994-04-17' AND O_ORDERDATE < date '1994-04-17' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1992-03-18' AND O_ORDERDATE < date '1992-03-18' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
/* TPC_H Query 10 */ SELECT C_CUSTKEY, C_NAME, SUM(REVENUE) AS REVENUE, C_ACCTBAL, N_NAME, C_ADDRESS, C_PHONE, C_COMMENT FROM mv_tap_q10 WHERE C_CUSTKEY = O_CUSTKEY AND L_ORDERKEY = O_ORDERKEY AND O_ORDERDATE >= date '1995-08-20' AND O_ORDERDATE < date '1995-08-20' + interval '3' month AND L_RETURNFLAG = 'N' AND C_NATIONKEY = N_NATIONKEY GROUP BY C_CUSTKEY, C_NAME, C_ACCTBAL, C_PHONE, N_NAME, C_ADDRESS, C_COMMENT ORDER BY REVENUE DESC LIMIT 20;;
