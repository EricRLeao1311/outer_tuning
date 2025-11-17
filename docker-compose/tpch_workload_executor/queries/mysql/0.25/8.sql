/* TPC-H Query 8 - Adaptada para SQLite */
SELECT 
    O_YEAR, 
    SUM(CASE WHEN NB_N_NAME = 'BRAZIL' THEN VOLUME ELSE 0 END) / SUM(VOLUME) AS MKT_SHARE
FROM 
    (
        SELECT 
            strftime('%Y', O_ORDERDATE) AS O_YEAR, 
            L_EXTENDEDPRICE * (1 - L_DISCOUNT) AS VOLUME, 
            NB.N_NAME AS NB_N_NAME
        FROM 
            PART, 
            SUPPLIER, 
            LINEITEM, 
            ORDERS, 
            CUSTOMER, 
            NATION NA, 
            NATION NB, 
            REGION
        WHERE 
            P_PARTKEY = L_PARTKEY 
            AND S_SUPPKEY = L_SUPPKEY 
            AND L_ORDERKEY = O_ORDERKEY 
            AND O_CUSTKEY = C_CUSTKEY 
            AND C_NATIONKEY = NA.N_NATIONKEY 
            AND NA.N_REGIONKEY = R_REGIONKEY 
            AND R_NAME = 'AFRICA' 
            AND S_NATIONKEY = NB.N_NATIONKEY 
            AND O_ORDERDATE BETWEEN '1993-12-27' AND date('1993-12-27', '+1 year') 
            AND P_TYPE = 'LARGE PLATED NICKEL'
    ) AS ALL_NATIONS
GROUP BY 
    O_YEAR
ORDER BY 
    O_YEAR;
