/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%accounts%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%to%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%furiously%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%requests%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%to%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%packages%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%requests%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%even%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%are%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%special%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%deposits%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%blithely%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%unusual%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%express%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%blithely%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%special%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%fluffily%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%wake%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%even%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%carefully%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%requests%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%carefully%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%carefully%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%even%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%special%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%to%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%the%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%ironic%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%sleep%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;
/* TPC_H Query 13 */ SELECT C_COUNT, COUNT(*) AS CUSTDIST FROM (SELECT C_CUSTKEY, COUNT(count_orderkey) as count_orderkey FROM mv_tap_q13 WHERE O_COMMENT NOT LIKE '%%to%%' GROUP BY C_CUSTKEY) AS C_ORDERS (C_CUSTKEY, C_COUNT) GROUP BY C_COUNT ORDER BY CUSTDIST DESC, C_COUNT DESC;;