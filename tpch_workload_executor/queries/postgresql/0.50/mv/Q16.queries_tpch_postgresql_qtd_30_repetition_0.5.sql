/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#25' AND P_TYPE NOT ILIKE '%SMALL PLATED NICKEL%' AND P_SIZE IN (23, 38, 20, 20, 24, 43, 24, 17) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%furiously%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%SMALL BRUSHED NICKEL%' AND P_SIZE IN (39, 8, 26, 48, 18, 38, 13, 15) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%fluffily%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#51' AND P_TYPE NOT ILIKE '%LARGE POLISHED COPPER%' AND P_SIZE IN (10, 8, 43, 19, 21, 48, 7, 20) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%even%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#11' AND P_TYPE NOT ILIKE '%PROMO POLISHED BRASS%' AND P_SIZE IN (24, 43, 7, 41, 12, 5, 6, 22) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%fluffily%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#15' AND P_TYPE NOT ILIKE '%ECONOMY ANODIZED STEEL%' AND P_SIZE IN (21, 5, 49, 4, 33, 40, 7, 12) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%pinto%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#43' AND P_TYPE NOT ILIKE '%ECONOMY POLISHED NICKEL%' AND P_SIZE IN (28, 17, 8, 30, 37, 25, 26, 3) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%the%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#22' AND P_TYPE NOT ILIKE '%LARGE PLATED STEEL%' AND P_SIZE IN (38, 37, 36, 27, 8, 49, 33, 45) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%wake%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#23' AND P_TYPE NOT ILIKE '%SMALL BRUSHED BRASS%' AND P_SIZE IN (8, 42, 33, 21, 7, 46, 23, 3) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%carefully%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#43' AND P_TYPE NOT ILIKE '%PROMO PLATED TIN%' AND P_SIZE IN (16, 15, 14, 4, 8, 5, 41, 29) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%accounts%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#54' AND P_TYPE NOT ILIKE '%MEDIUM POLISHED NICKEL%' AND P_SIZE IN (7, 6, 32, 32, 37, 45, 37, 30) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%pinto%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#24' AND P_TYPE NOT ILIKE '%MEDIUM BRUSHED BRASS%' AND P_SIZE IN (16, 13, 37, 26, 40, 36, 35, 20) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%requests%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#32' AND P_TYPE NOT ILIKE '%SMALL BRUSHED BRASS%' AND P_SIZE IN (17, 48, 50, 7, 46, 21, 11, 48) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%final%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#52' AND P_TYPE NOT ILIKE '%ECONOMY ANODIZED COPPER%' AND P_SIZE IN (33, 47, 10, 39, 20, 14, 19, 40) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%haggle%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#41' AND P_TYPE NOT ILIKE '%STANDARD PLATED BRASS%' AND P_SIZE IN (30, 40, 48, 5, 2, 19, 13, 50) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%cajole%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#13' AND P_TYPE NOT ILIKE '%LARGE BURNISHED NICKEL%' AND P_SIZE IN (24, 37, 27, 21, 17, 37, 43, 19) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%furiously%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
/* TPC_H Query 16 */ SELECT P_BRAND, P_TYPE, P_SIZE, COUNT(DISTINCT(PS_SUPPKEY)) AS SUPPLIER_CNT FROM PARTSUPP, PART WHERE P_PARTKEY = PS_PARTKEY AND P_BRAND <> 'Brand#45' AND P_TYPE NOT ILIKE '%MEDIUM BURNISHED COPPER%' AND P_SIZE IN (9, 50, 27, 40, 47, 19, 23, 42) AND PS_SUPPKEY NOT IN (SELECT S_SUPPKEY FROM mv_tap_q16 WHERE S_COMMENT LIKE '%%requests%%') GROUP BY P_BRAND, P_TYPE, P_SIZE ORDER BY SUPPLIER_CNT DESC, P_BRAND, P_TYPE, P_SIZE;;
