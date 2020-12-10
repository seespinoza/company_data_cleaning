USE SQLProject_db;
GO

/* Objective 6: Find how many customers made purchases who were under 30 years old, male, and from the south

This statement counts all distinct customer IDs from inner joining
the PURCHASE and CUSTOMER tables on the CUST_ID field. */

SELECT COUNT(DISTINCT PURCHASE.CUST_ID) 
FROM dbo.PURCHASE INNER JOIN dbo.CUSTOMER ON PURCHASE.CUST_ID = CUSTOMER.CUST_ID 
WHERE CUSTOMER.AGE < 30 AND CUSTOMER.GENDER = 'Male' 
AND (CUSTOMER.REGION = 'Southeast' OR CUSTOMER.REGION = 'Southwest');

/* Objective 8: Create a new dataset where you include all details on customers and their purchases

This statement provides all fields from inner joining the PURCHASE
and CUSTOMER tables on the CUST_ID field. This eliminates any records 
of CUSTOMERS who did not make purchases. The resulting table is then
inner joined with the PRODUCT table to help identify the products
using the PRODUCT_ID from the previous join. */

SELECT *
FROM dbo.PURCHASE AS PU
INNER JOIN dbo.CUSTOMER AS CU ON PU.CUST_ID = CU.CUST_ID
INNER JOIN dbo.PRODUCT AS PRO ON PRO.PRODUCT_ID = PU.PRODUCT_ID;

/* Objective 9: List all products purchases by Eada Dorney 

Uses the same query structure from objective 8 to find product information
in records with the first name "Eada" and last name "Dorney".*/

SELECT PU.PRODUCT_ID, PRODUCT, PRODUCT_TYPE, PRODUCT_LINE, PU.QUANTITY
FROM dbo.PURCHASE AS PU
INNER JOIN dbo.CUSTOMER AS CU ON PU.CUST_ID = CU.CUST_ID
INNER JOIN dbo.PRODUCT AS PRO ON PRO.PRODUCT_ID = PU.PRODUCT_ID
WHERE CU.FIRST_NAME = 'Eada' AND CU.LAST_NAME = 'Dorney';

/* Objective 10: Find the total amount spent by each customer

Uses the same query structure from objective 8 to apply the SUM
aggregate function to the revenue column and group the results by
CUST_ID, GENDER, and REGION (to help create objective 11 plots).
*/

SELECT CU.CUST_ID, SUM(PRO.REVENUE) AS TOTAL_SPENT, CU.GENDER, CU.REGION
FROM dbo.PURCHASE AS PU
INNER JOIN dbo.CUSTOMER AS CU ON PU.CUST_ID = CU.CUST_ID
INNER JOIN dbo.PRODUCT AS PRO ON PRO.PRODUCT_ID = PU.PRODUCT_ID
GROUP BY CU.CUST_ID, CU.GENDER, CU.REGION;

