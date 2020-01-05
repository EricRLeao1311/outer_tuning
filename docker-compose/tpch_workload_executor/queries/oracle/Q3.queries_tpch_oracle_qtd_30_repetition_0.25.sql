/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'HOUSEHOLD' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1995-08-31' AND l_shipdate > date '1992-06-26' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1992-02-27' AND l_shipdate > date '1995-09-18' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'AUTOMOBILE' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1997-04-11' AND l_shipdate > date '1994-02-18' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1995-09-06' AND l_shipdate > date '1995-01-14' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1993-12-06' AND l_shipdate > date '1997-11-14' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1995-03-05' AND l_shipdate > date '1998-05-21' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'BUILDING' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1995-10-27' AND l_shipdate > date '1996-02-25' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'HOUSEHOLD' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1993-09-20' AND l_shipdate > date '1992-06-06' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1992-02-27' AND l_shipdate > date '1995-09-18' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'AUTOMOBILE' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1995-04-30' AND l_shipdate > date '1994-01-12' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1996-04-11' AND l_shipdate > date '1996-01-10' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'AUTOMOBILE' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1998-03-25' AND l_shipdate > date '1996-10-17' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'HOUSEHOLD' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1992-05-08' AND l_shipdate > date '1992-10-19' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'HOUSEHOLD' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1994-11-27' AND l_shipdate > date '1997-10-01' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'AUTOMOBILE' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1997-11-29' AND l_shipdate > date '1992-01-10' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1992-02-27' AND l_shipdate > date '1995-09-18' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'BUILDING' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1996-05-22' AND l_shipdate > date '1996-06-08' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'AUTOMOBILE' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1994-02-12' AND l_shipdate > date '1992-03-23' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'FURNITURE' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1997-05-11' AND l_shipdate > date '1993-11-06' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1992-02-27' AND l_shipdate > date '1995-09-18' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'FURNITURE' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1992-10-19' AND l_shipdate > date '1996-05-01' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'AUTOMOBILE' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1995-01-04' AND l_shipdate > date '1996-11-30' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'HOUSEHOLD' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1994-12-03' AND l_shipdate > date '1992-10-12' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1992-02-27' AND l_shipdate > date '1995-09-18' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1992-02-27' AND l_shipdate > date '1995-09-18' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1992-02-27' AND l_shipdate > date '1995-09-18' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1992-02-27' AND l_shipdate > date '1995-09-18' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1996-04-08' AND l_shipdate > date '1992-06-14' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'FURNITURE' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1996-07-21' AND l_shipdate > date '1994-06-17' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;
/* TPC_H Query 3 */ select l_orderkey, sum(l_extendedprice * (1 - l_discount)) as revenue, o_orderdate, o_shippriority from h_customer, h_order, h_lineitem WHERE c_mktsegment = 'MACHINERY' AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND o_orderdate < date '1992-07-25' AND l_shipdate > date '1996-04-28' GROUP BY l_orderkey, o_orderdate, o_shippriority ORDER BY revenue desc, o_orderdate;