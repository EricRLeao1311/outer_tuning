/* TPC-H Query 3 - Adaptada para SQLite */
SELECT 
    l_orderkey, 
    SUM(l_extendedprice * (1 - l_discount)) AS revenue, 
    o_orderdate, 
    o_shippriority
FROM 
    customer, 
    orders, 
    lineitem
WHERE 
    c_mktsegment = 'HOUSEHOLD' 
    AND c_custkey = o_custkey 
    AND l_orderkey = o_orderkey 
    AND o_orderdate < '1992-07-30' 
    AND l_shipdate > '1998-05-04'
GROUP BY 
    l_orderkey, 
    o_orderdate, 
    o_shippriority
ORDER BY 
    revenue DESC, 
    o_orderdate
LIMIT 20;
