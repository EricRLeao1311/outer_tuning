/* TPC-H Query 4 - Adaptada para SQLite */
SELECT 
    o_orderpriority, 
    COUNT(*) AS order_count
FROM 
    orders
WHERE 
    o_orderdate >= '1993-06-17' 
    AND o_orderdate < date('1993-06-17', '+3 months')
    AND EXISTS (
        SELECT 1 
        FROM lineitem 
        WHERE l_orderkey = o_orderkey 
        AND l_commitdate < l_receiptdate
    )
GROUP BY 
    o_orderpriority
ORDER BY 
    o_orderpriority;
