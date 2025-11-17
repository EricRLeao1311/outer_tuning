/* TPC-H Query 6 - Adaptada para SQLite */
SELECT 
    SUM(l_extendedprice * l_discount) AS revenue
FROM 
    lineitem
WHERE 
    l_shipdate >= '1997-06-11' 
    AND l_shipdate < date('1997-06-11', '+1 year')
    AND l_discount BETWEEN -0.95 AND 1.02
    AND l_quantity < 21;
