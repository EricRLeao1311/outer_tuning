/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#34' and p_container in ('LG PACK', 'MED CAN', 'MED DRUM', 'SM BOX') and l_quantity >= 1 and l_quantity <= 27 + 10 and p_size between 18 and 22 + 15 and l_shipmode in ('RAIL', 'SHIP') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#25' and p_container in ('JUMBO PACK', 'SM BAG', 'LG BOX', 'LG BOX') and l_quantity >= 40 and l_quantity <= 45 + 10 and p_size between 38 and 22 + 15 and l_shipmode in ('FOB', 'RAIL') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#15' and p_container in ('SM DRUM', 'JUMBO JAR', 'JUMBO BAG', 'MED PACK') and l_quantity >= 19 and l_quantity <= 18 + 10 and p_size between 48 and 5 + 15 and l_shipmode in ('TRUCK', 'TRUCK') and l_shipinstruct = 'TAKE BACK RETURN' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#35' and p_container in ('WRAP BOX', 'JUMBO BAG', 'MED PACK', 'WRAP CASE') and l_quantity >= 34 and l_quantity <= 3 + 10 and p_size between 17 and 49 + 15 and l_shipmode in ('SHIP', 'SHIP') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#44' and p_container in ('MED PACK', 'WRAP CAN', 'WRAP CAN', 'MED JAR') and l_quantity >= 3 and l_quantity <= 8 + 10 and p_size between 6 and 12 + 15 and l_shipmode in ('RAIL', 'SHIP') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#51' and p_container in ('MED JAR', 'WRAP CASE', 'SM CASE', 'LG PACK') and l_quantity >= 20 and l_quantity <= 50 + 10 and p_size between 32 and 40 + 15 and l_shipmode in ('MAIL', 'AIR') and l_shipinstruct = 'DELIVER IN PERSON' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#42' and p_container in ('JUMBO JAR', 'MED CAN', 'SM BAG', 'JUMBO BAG') and l_quantity >= 45 and l_quantity <= 45 + 10 and p_size between 44 and 48 + 15 and l_shipmode in ('SHIP', 'TRUCK') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#55' and p_container in ('MED BOX', 'WRAP BAG', 'SM CASE', 'JUMBO BOX') and l_quantity >= 8 and l_quantity <= 31 + 10 and p_size between 15 and 44 + 15 and l_shipmode in ('FOB', 'RAIL') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#13' and p_container in ('JUMBO JAR', 'WRAP PACK', 'LG BOX', 'SM DRUM') and l_quantity >= 40 and l_quantity <= 39 + 10 and p_size between 41 and 12 + 15 and l_shipmode in ('REG AIR', 'FOB') and l_shipinstruct = 'COLLECT COD' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#55' and p_container in ('SM BOX', 'WRAP PACK', 'MED CAN', 'LG PACK') and l_quantity >= 31 and l_quantity <= 41 + 10 and p_size between 5 and 21 + 15 and l_shipmode in ('MAIL', 'AIR') and l_shipinstruct = 'COLLECT COD' ) or ( p_partkey = l_partkey and p_brand = 'Brand#44' and p_container in ('WRAP PKG', 'SM DRUM', 'WRAP CASE', 'JUMBO PKG') and l_quantity >= 35 and l_quantity <= 14 + 10 and p_size between 9 and 9 + 15 and l_shipmode in ('SHIP', 'FOB') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#34' and p_container in ('WRAP BAG', 'LG BOX', 'JUMBO BOX', 'SM PKG') and l_quantity >= 28 and l_quantity <= 32 + 10 and p_size between 37 and 42 + 15 and l_shipmode in ('REG AIR', 'FOB') and l_shipinstruct = 'TAKE BACK RETURN' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#22' and p_container in ('WRAP CASE', 'MED DRUM', 'WRAP BAG', 'WRAP PACK') and l_quantity >= 13 and l_quantity <= 37 + 10 and p_size between 48 and 8 + 15 and l_shipmode in ('TRUCK', 'TRUCK') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#34' and p_container in ('WRAP CASE', 'WRAP PKG', 'LG BOX', 'MED CASE') and l_quantity >= 39 and l_quantity <= 4 + 10 and p_size between 39 and 1 + 15 and l_shipmode in ('TRUCK', 'FOB') and l_shipinstruct = 'COLLECT COD' ) or ( p_partkey = l_partkey and p_brand = 'Brand#55' and p_container in ('JUMBO CAN', 'JUMBO JAR', 'LG PACK', 'JUMBO PKG') and l_quantity >= 7 and l_quantity <= 32 + 10 and p_size between 22 and 44 + 15 and l_shipmode in ('FOB', 'RAIL') and l_shipinstruct = 'TAKE BACK RETURN' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#33' and p_container in ('JUMBO BOX', 'JUMBO CAN', 'SM DRUM', 'JUMBO BOX') and l_quantity >= 23 and l_quantity <= 29 + 10 and p_size between 25 and 5 + 15 and l_shipmode in ('REG AIR', 'MAIL') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#35' and p_container in ('WRAP CASE', 'SM DRUM', 'SM BAG', 'LG PKG') and l_quantity >= 39 and l_quantity <= 25 + 10 and p_size between 35 and 16 + 15 and l_shipmode in ('FOB', 'RAIL') and l_shipinstruct = 'COLLECT COD' ) or ( p_partkey = l_partkey and p_brand = 'Brand#21' and p_container in ('MED BOX', 'WRAP CAN', 'MED JAR', 'MED PKG') and l_quantity >= 42 and l_quantity <= 41 + 10 and p_size between 18 and 22 + 15 and l_shipmode in ('REG AIR', 'RAIL') and l_shipinstruct = 'NONE' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#43' and p_container in ('MED JAR', 'LG PKG', 'MED BOX', 'JUMBO BAG') and l_quantity >= 13 and l_quantity <= 31 + 10 and p_size between 29 and 25 + 15 and l_shipmode in ('MAIL', 'MAIL') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#31' and p_container in ('JUMBO PKG', 'LG CAN', 'LG DRUM', 'MED PKG') and l_quantity >= 21 and l_quantity <= 29 + 10 and p_size between 36 and 22 + 15 and l_shipmode in ('AIR', 'TRUCK') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#32' and p_container in ('JUMBO JAR', 'SM CASE', 'WRAP DRUM', 'JUMBO JAR') and l_quantity >= 26 and l_quantity <= 19 + 10 and p_size between 12 and 39 + 15 and l_shipmode in ('FOB', 'REG AIR') and l_shipinstruct = 'COLLECT COD' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#24' and p_container in ('MED CASE', 'MED PACK', 'LG BOX', 'LG PKG') and l_quantity >= 39 and l_quantity <= 38 + 10 and p_size between 24 and 29 + 15 and l_shipmode in ('SHIP', 'RAIL') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#51' and p_container in ('WRAP PACK', 'MED PACK', 'WRAP CAN', 'LG PACK') and l_quantity >= 40 and l_quantity <= 9 + 10 and p_size between 17 and 31 + 15 and l_shipmode in ('SHIP', 'REG AIR') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#12' and p_container in ('SM DRUM', 'SM BOX', 'MED PACK', 'JUMBO PKG') and l_quantity >= 27 and l_quantity <= 36 + 10 and p_size between 25 and 45 + 15 and l_shipmode in ('TRUCK', 'SHIP') and l_shipinstruct = 'TAKE BACK RETURN' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#35' and p_container in ('MED DRUM', 'LG BOX', 'WRAP CAN', 'MED CAN') and l_quantity >= 46 and l_quantity <= 29 + 10 and p_size between 8 and 5 + 15 and l_shipmode in ('FOB', 'FOB') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#22' and p_container in ('MED PKG', 'MED CASE', 'LG BOX', 'MED BAG') and l_quantity >= 27 and l_quantity <= 19 + 10 and p_size between 33 and 18 + 15 and l_shipmode in ('MAIL', 'FOB') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#22' and p_container in ('WRAP BAG', 'SM DRUM', 'JUMBO JAR', 'MED CAN') and l_quantity >= 30 and l_quantity <= 35 + 10 and p_size between 7 and 16 + 15 and l_shipmode in ('MAIL', 'FOB') and l_shipinstruct = 'NONE' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#44' and p_container in ('SM PKG', 'WRAP PKG', 'WRAP CASE', 'JUMBO BOX') and l_quantity >= 50 and l_quantity <= 17 + 10 and p_size between 32 and 27 + 15 and l_shipmode in ('AIR', 'AIR') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#22' and p_container in ('SM PKG', 'MED PACK', 'JUMBO BAG', 'MED BAG') and l_quantity >= 42 and l_quantity <= 3 + 10 and p_size between 13 and 15 + 15 and l_shipmode in ('SHIP', 'FOB') and l_shipinstruct = 'COLLECT COD' ) or ( p_partkey = l_partkey and p_brand = 'Brand#12' and p_container in ('SM PKG', 'JUMBO BOX', 'MED PACK', 'SM CASE') and l_quantity >= 16 and l_quantity <= 19 + 10 and p_size between 2 and 16 + 15 and l_shipmode in ('TRUCK', 'REG AIR') and l_shipinstruct = 'DELIVER IN PERSON' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#42' and p_container in ('MED JAR', 'LG CAN', 'SM DRUM', 'WRAP CASE') and l_quantity >= 23 and l_quantity <= 21 + 10 and p_size between 33 and 3 + 15 and l_shipmode in ('SHIP', 'TRUCK') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#51' and p_container in ('LG DRUM', 'LG DRUM', 'WRAP DRUM', 'WRAP CASE') and l_quantity >= 36 and l_quantity <= 49 + 10 and p_size between 22 and 14 + 15 and l_shipmode in ('SHIP', 'FOB') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#33' and p_container in ('LG PKG', 'SM PKG', 'MED JAR', 'MED PACK') and l_quantity >= 29 and l_quantity <= 34 + 10 and p_size between 15 and 23 + 15 and l_shipmode in ('FOB', 'FOB') and l_shipinstruct = 'DELIVER IN PERSON' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#42' and p_container in ('SM BOX', 'WRAP PACK', 'SM DRUM', 'MED PACK') and l_quantity >= 40 and l_quantity <= 23 + 10 and p_size between 31 and 45 + 15 and l_shipmode in ('REG AIR', 'REG AIR') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#13' and p_container in ('LG BOX', 'JUMBO PKG', 'LG PKG', 'SM PKG') and l_quantity >= 16 and l_quantity <= 5 + 10 and p_size between 42 and 6 + 15 and l_shipmode in ('MAIL', 'RAIL') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#21' and p_container in ('JUMBO BOX', 'WRAP PACK', 'SM CASE', 'LG PACK') and l_quantity >= 7 and l_quantity <= 27 + 10 and p_size between 19 and 26 + 15 and l_shipmode in ('RAIL', 'TRUCK') and l_shipinstruct = 'TAKE BACK RETURN' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#13' and p_container in ('MED CAN', 'WRAP CASE', 'MED JAR', 'JUMBO BAG') and l_quantity >= 18 and l_quantity <= 30 + 10 and p_size between 11 and 27 + 15 and l_shipmode in ('FOB', 'AIR') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#32' and p_container in ('MED CAN', 'JUMBO PKG', 'JUMBO PACK', 'WRAP PACK') and l_quantity >= 9 and l_quantity <= 1 + 10 and p_size between 31 and 31 + 15 and l_shipmode in ('RAIL', 'SHIP') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#14' and p_container in ('JUMBO BOX', 'JUMBO CAN', 'SM CASE', 'MED BAG') and l_quantity >= 23 and l_quantity <= 1 + 10 and p_size between 28 and 4 + 15 and l_shipmode in ('FOB', 'MAIL') and l_shipinstruct = 'COLLECT COD' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#41' and p_container in ('LG BOX', 'WRAP PKG', 'WRAP DRUM', 'LG PACK') and l_quantity >= 35 and l_quantity <= 25 + 10 and p_size between 17 and 27 + 15 and l_shipmode in ('AIR', 'RAIL') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#35' and p_container in ('WRAP DRUM', 'JUMBO BOX', 'MED PACK', 'JUMBO JAR') and l_quantity >= 29 and l_quantity <= 38 + 10 and p_size between 2 and 15 + 15 and l_shipmode in ('FOB', 'RAIL') and l_shipinstruct = 'COLLECT COD' ) or ( p_partkey = l_partkey and p_brand = 'Brand#11' and p_container in ('WRAP PACK', 'LG DRUM', 'JUMBO CAN', 'JUMBO BOX') and l_quantity >= 2 and l_quantity <= 28 + 10 and p_size between 15 and 14 + 15 and l_shipmode in ('RAIL', 'TRUCK') and l_shipinstruct = 'NONE' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#35' and p_container in ('LG BOX', 'SM BOX', 'LG CAN', 'SM BOX') and l_quantity >= 1 and l_quantity <= 48 + 10 and p_size between 1 and 46 + 15 and l_shipmode in ('RAIL', 'RAIL') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#25' and p_container in ('SM DRUM', 'JUMBO PACK', 'JUMBO BOX', 'MED PKG') and l_quantity >= 10 and l_quantity <= 1 + 10 and p_size between 8 and 48 + 15 and l_shipmode in ('RAIL', 'MAIL') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#24' and p_container in ('MED DRUM', 'JUMBO BAG', 'WRAP CASE', 'MED BOX') and l_quantity >= 14 and l_quantity <= 38 + 10 and p_size between 14 and 12 + 15 and l_shipmode in ('MAIL', 'FOB') and l_shipinstruct = 'TAKE BACK RETURN' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#53' and p_container in ('JUMBO PACK', 'JUMBO BOX', 'WRAP CASE', 'WRAP BOX') and l_quantity >= 6 and l_quantity <= 22 + 10 and p_size between 31 and 26 + 15 and l_shipmode in ('MAIL', 'MAIL') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#51' and p_container in ('SM DRUM', 'SM PACK', 'LG PKG', 'SM PACK') and l_quantity >= 45 and l_quantity <= 46 + 10 and p_size between 36 and 19 + 15 and l_shipmode in ('MAIL', 'RAIL') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#22' and p_container in ('MED BAG', 'MED DRUM', 'JUMBO PACK', 'LG PACK') and l_quantity >= 9 and l_quantity <= 12 + 10 and p_size between 33 and 13 + 15 and l_shipmode in ('SHIP', 'REG AIR') and l_shipinstruct = 'DELIVER IN PERSON' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#45' and p_container in ('LG BOX', 'JUMBO PACK', 'LG BOX', 'WRAP BOX') and l_quantity >= 10 and l_quantity <= 10 + 10 and p_size between 28 and 36 + 15 and l_shipmode in ('MAIL', 'SHIP') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#51' and p_container in ('WRAP BOX', 'JUMBO BAG', 'MED CASE', 'WRAP CASE') and l_quantity >= 3 and l_quantity <= 13 + 10 and p_size between 49 and 2 + 15 and l_shipmode in ('REG AIR', 'AIR') and l_shipinstruct = 'COLLECT COD' ) or ( p_partkey = l_partkey and p_brand = 'Brand#52' and p_container in ('JUMBO CAN', 'MED PACK', 'MED DRUM', 'WRAP PKG') and l_quantity >= 36 and l_quantity <= 7 + 10 and p_size between 46 and 36 + 15 and l_shipmode in ('RAIL', 'AIR') and l_shipinstruct = 'NONE' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#24' and p_container in ('WRAP PACK', 'JUMBO PKG', 'WRAP BAG', 'SM BAG') and l_quantity >= 27 and l_quantity <= 26 + 10 and p_size between 17 and 25 + 15 and l_shipmode in ('SHIP', 'FOB') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#34' and p_container in ('LG CAN', 'SM BAG', 'WRAP CAN', 'MED BOX') and l_quantity >= 3 and l_quantity <= 37 + 10 and p_size between 28 and 38 + 15 and l_shipmode in ('SHIP', 'SHIP') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#31' and p_container in ('SM BOX', 'JUMBO JAR', 'SM BAG', 'SM PKG') and l_quantity >= 11 and l_quantity <= 4 + 10 and p_size between 6 and 9 + 15 and l_shipmode in ('REG AIR', 'REG AIR') and l_shipinstruct = 'COLLECT COD' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#14' and p_container in ('MED PACK', 'MED PACK', 'LG CAN', 'SM BOX') and l_quantity >= 16 and l_quantity <= 2 + 10 and p_size between 12 and 41 + 15 and l_shipmode in ('SHIP', 'MAIL') and l_shipinstruct = 'COLLECT COD' ) or ( p_partkey = l_partkey and p_brand = 'Brand#51' and p_container in ('SM CASE', 'SM BOX', 'MED CAN', 'WRAP DRUM') and l_quantity >= 37 and l_quantity <= 35 + 10 and p_size between 42 and 40 + 15 and l_shipmode in ('AIR', 'TRUCK') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#31' and p_container in ('SM BOX', 'WRAP CAN', 'WRAP BOX', 'JUMBO JAR') and l_quantity >= 6 and l_quantity <= 26 + 10 and p_size between 40 and 5 + 15 and l_shipmode in ('AIR', 'REG AIR') and l_shipinstruct = 'COLLECT COD' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#14' and p_container in ('LG CAN', 'WRAP DRUM', 'MED BOX', 'JUMBO BAG') and l_quantity >= 4 and l_quantity <= 23 + 10 and p_size between 12 and 10 + 15 and l_shipmode in ('MAIL', 'SHIP') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#14' and p_container in ('LG CAN', 'LG CAN', 'WRAP CASE', 'MED PACK') and l_quantity >= 2 and l_quantity <= 48 + 10 and p_size between 11 and 10 + 15 and l_shipmode in ('FOB', 'MAIL') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#54' and p_container in ('SM PACK', 'WRAP BOX', 'MED PKG', 'WRAP CASE') and l_quantity >= 12 and l_quantity <= 33 + 10 and p_size between 33 and 30 + 15 and l_shipmode in ('SHIP', 'SHIP') and l_shipinstruct = 'NONE' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#25' and p_container in ('JUMBO JAR', 'WRAP CAN', 'SM PACK', 'JUMBO JAR') and l_quantity >= 24 and l_quantity <= 46 + 10 and p_size between 44 and 4 + 15 and l_shipmode in ('SHIP', 'RAIL') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#34' and p_container in ('MED JAR', 'LG CAN', 'LG CAN', 'LG PKG') and l_quantity >= 21 and l_quantity <= 50 + 10 and p_size between 18 and 14 + 15 and l_shipmode in ('MAIL', 'SHIP') and l_shipinstruct = 'COLLECT COD' ) or ( p_partkey = l_partkey and p_brand = 'Brand#55' and p_container in ('LG BOX', 'SM DRUM', 'MED BAG', 'WRAP PACK') and l_quantity >= 16 and l_quantity <= 5 + 10 and p_size between 37 and 7 + 15 and l_shipmode in ('MAIL', 'MAIL') and l_shipinstruct = 'TAKE BACK RETURN' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#51' and p_container in ('SM BAG', 'JUMBO CAN', 'LG CAN', 'WRAP BOX') and l_quantity >= 26 and l_quantity <= 20 + 10 and p_size between 42 and 34 + 15 and l_shipmode in ('REG AIR', 'RAIL') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#14' and p_container in ('LG CAN', 'JUMBO PACK', 'WRAP CASE', 'LG CAN') and l_quantity >= 37 and l_quantity <= 9 + 10 and p_size between 15 and 16 + 15 and l_shipmode in ('RAIL', 'TRUCK') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#34' and p_container in ('SM BOX', 'SM BOX', 'MED PKG', 'WRAP PKG') and l_quantity >= 5 and l_quantity <= 9 + 10 and p_size between 5 and 14 + 15 and l_shipmode in ('RAIL', 'AIR') and l_shipinstruct = 'NONE' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#42' and p_container in ('SM BOX', 'MED CASE', 'SM PKG', 'MED PKG') and l_quantity >= 24 and l_quantity <= 8 + 10 and p_size between 20 and 39 + 15 and l_shipmode in ('MAIL', 'RAIL') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#52' and p_container in ('WRAP PKG', 'WRAP DRUM', 'LG PACK', 'LG PACK') and l_quantity >= 11 and l_quantity <= 15 + 10 and p_size between 13 and 24 + 15 and l_shipmode in ('AIR', 'RAIL') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#25' and p_container in ('WRAP PACK', 'WRAP BAG', 'MED JAR', 'SM BAG') and l_quantity >= 48 and l_quantity <= 20 + 10 and p_size between 8 and 8 + 15 and l_shipmode in ('SHIP', 'REG AIR') and l_shipinstruct = 'COLLECT COD' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#35' and p_container in ('WRAP PKG', 'LG DRUM', 'SM PACK', 'WRAP CASE') and l_quantity >= 20 and l_quantity <= 17 + 10 and p_size between 11 and 9 + 15 and l_shipmode in ('RAIL', 'AIR') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#44' and p_container in ('WRAP PACK', 'MED CAN', 'MED JAR', 'JUMBO PKG') and l_quantity >= 18 and l_quantity <= 48 + 10 and p_size between 31 and 26 + 15 and l_shipmode in ('AIR', 'RAIL') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#32' and p_container in ('JUMBO BOX', 'SM DRUM', 'MED PKG', 'MED PACK') and l_quantity >= 43 and l_quantity <= 39 + 10 and p_size between 10 and 41 + 15 and l_shipmode in ('AIR', 'AIR') and l_shipinstruct = 'COLLECT COD' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#35' and p_container in ('WRAP PKG', 'SM PKG', 'SM BOX', 'WRAP CAN') and l_quantity >= 33 and l_quantity <= 48 + 10 and p_size between 44 and 7 + 15 and l_shipmode in ('FOB', 'REG AIR') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#53' and p_container in ('JUMBO JAR', 'LG PKG', 'LG PACK', 'JUMBO CAN') and l_quantity >= 17 and l_quantity <= 27 + 10 and p_size between 15 and 30 + 15 and l_shipmode in ('AIR', 'RAIL') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#35' and p_container in ('LG PKG', 'SM DRUM', 'JUMBO PACK', 'WRAP DRUM') and l_quantity >= 1 and l_quantity <= 34 + 10 and p_size between 24 and 31 + 15 and l_shipmode in ('REG AIR', 'AIR') and l_shipinstruct = 'NONE' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#54' and p_container in ('WRAP PKG', 'MED JAR', 'LG BOX', 'SM PACK') and l_quantity >= 41 and l_quantity <= 33 + 10 and p_size between 50 and 50 + 15 and l_shipmode in ('RAIL', 'SHIP') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#32' and p_container in ('JUMBO BAG', 'SM BOX', 'SM BAG', 'LG PACK') and l_quantity >= 38 and l_quantity <= 12 + 10 and p_size between 46 and 10 + 15 and l_shipmode in ('MAIL', 'FOB') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#13' and p_container in ('MED DRUM', 'WRAP BOX', 'LG DRUM', 'JUMBO PKG') and l_quantity >= 3 and l_quantity <= 44 + 10 and p_size between 11 and 33 + 15 and l_shipmode in ('AIR', 'REG AIR') and l_shipinstruct = 'NONE' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#42' and p_container in ('SM BOX', 'WRAP PACK', 'SM DRUM', 'MED PACK') and l_quantity >= 40 and l_quantity <= 23 + 10 and p_size between 31 and 45 + 15 and l_shipmode in ('REG AIR', 'REG AIR') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#13' and p_container in ('LG BOX', 'JUMBO PKG', 'LG PKG', 'SM PKG') and l_quantity >= 16 and l_quantity <= 5 + 10 and p_size between 42 and 6 + 15 and l_shipmode in ('MAIL', 'RAIL') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#21' and p_container in ('JUMBO BOX', 'WRAP PACK', 'SM CASE', 'LG PACK') and l_quantity >= 7 and l_quantity <= 27 + 10 and p_size between 19 and 26 + 15 and l_shipmode in ('RAIL', 'TRUCK') and l_shipinstruct = 'TAKE BACK RETURN' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#31' and p_container in ('JUMBO PKG', 'WRAP BAG', 'JUMBO BOX', 'MED JAR') and l_quantity >= 42 and l_quantity <= 35 + 10 and p_size between 47 and 14 + 15 and l_shipmode in ('TRUCK', 'TRUCK') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#54' and p_container in ('LG CAN', 'JUMBO PACK', 'JUMBO BAG', 'JUMBO BOX') and l_quantity >= 1 and l_quantity <= 28 + 10 and p_size between 39 and 24 + 15 and l_shipmode in ('REG AIR', 'AIR') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#21' and p_container in ('JUMBO BOX', 'WRAP DRUM', 'WRAP BOX', 'SM PACK') and l_quantity >= 19 and l_quantity <= 17 + 10 and p_size between 1 and 50 + 15 and l_shipmode in ('SHIP', 'TRUCK') and l_shipinstruct = 'DELIVER IN PERSON' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#21' and p_container in ('MED BAG', 'SM BOX', 'MED DRUM', 'WRAP BOX') and l_quantity >= 15 and l_quantity <= 29 + 10 and p_size between 38 and 14 + 15 and l_shipmode in ('REG AIR', 'AIR') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#25' and p_container in ('LG PKG', 'SM BOX', 'WRAP CASE', 'JUMBO CAN') and l_quantity >= 33 and l_quantity <= 35 + 10 and p_size between 47 and 48 + 15 and l_shipmode in ('REG AIR', 'REG AIR') and l_shipinstruct = 'NONE' ) or ( p_partkey = l_partkey and p_brand = 'Brand#45' and p_container in ('JUMBO PKG', 'LG BOX', 'SM BAG', 'SM DRUM') and l_quantity >= 44 and l_quantity <= 11 + 10 and p_size between 40 and 1 + 15 and l_shipmode in ('MAIL', 'RAIL') and l_shipinstruct = 'COLLECT COD' );;
/* TPC_H Query 19 */ select sum(l_extendedprice* (1 - l_discount)) as revenue from lineitem, part where ( p_partkey = l_partkey and p_brand = 'Brand#34' and p_container in ('LG DRUM', 'JUMBO BOX', 'JUMBO PACK', 'SM BOX') and l_quantity >= 26 and l_quantity <= 46 + 10 and p_size between 2 and 24 + 15 and l_shipmode in ('FOB', 'AIR') and l_shipinstruct = 'DELIVER IN PERSON' ) or ( p_partkey = l_partkey and p_brand = 'Brand#11' and p_container in ('JUMBO CAN', 'JUMBO CAN', 'JUMBO PACK', 'LG PACK') and l_quantity >= 20 and l_quantity <= 15 + 10 and p_size between 39 and 31 + 15 and l_shipmode in ('MAIL', 'FOB') and l_shipinstruct = 'TAKE BACK RETURN' ) or ( p_partkey = l_partkey and p_brand = 'Brand#13' and p_container in ('MED JAR', 'MED PACK', 'SM BOX', 'JUMBO JAR') and l_quantity >= 5 and l_quantity <= 40 + 10 and p_size between 3 and 36 + 15 and l_shipmode in ('RAIL', 'MAIL') and l_shipinstruct = 'COLLECT COD' );;
