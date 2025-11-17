/* TPC-H Query 7 - Adaptada para SQLite */
SELECT 
    NA_N_NAME, 
    NB_N_NAME, 
    L_YEAR, 
    SUM(VOLUME) AS REVENUE
FROM 
    (
        SELECT 
            NA.N_NAME AS NA_N_NAME, 
            NB.N_NAME AS NB_N_NAME, 
            strftime('%Y', L_SHIPDATE) AS L_YEAR, 
            L_EXTENDEDPRICE * (1 - L_DISCOUNT) AS VOLUME
        FROM 
            SUPPLIER, 
            LINEITEM, 
            ORDERS, 
            CUSTOMER, 
            NATION NA, 
            NATION NB
        WHERE 
            S_SUPPKEY = L_SUPPKEY 
            AND O_ORDERKEY = L_ORDERKEY 
            AND C_CUSTKEY = O_CUSTKEY 
            AND S_NATIONKEY = NA.N_NATIONKEY 
            AND C_NATIONKEY = NB.N_NATIONKEY 
            AND (
                (NA.N_NAME = 'EUROPE' AND NB.N_NAME = 'UNITED STATES') 
                OR (NA.N_NAME = 'UNITED STATES' AND NB.N_NAME = 'EUROPE')
            ) 
            AND L_SHIPDATE BETWEEN '1992-05-09' AND date('1992-05-09', '+1 year')
    ) AS SHIPPING
GROUP BY 
    NA_N_NAME, 
    NB_N_NAME, 
    L_YEAR
ORDER BY 
    NA_N_NAME, 
    NB_N_NAME, 
    L_YEAR;
