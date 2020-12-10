USE SQLProject_db;
GO

/* Define purchase, product and customer tables. */
DROP TABLE dbo.PURCHASE, dbo.PRODUCT, dbo.CUSTOMER
CREATE TABLE dbo.PURCHASE
	(
		PRODUCT_ID int,
		CUST_ID int,
		METHOD varchar(200),
		QUANTITY int,
		DATE_OF_PURCHASE varchar(200)
	)

CREATE TABLE dbo.PRODUCT
	(
		PRODUCT_ID int,
		RETAILER_COUNTRY varchar(200),
		ORDER_METHOD varchar(200),
		RETAILER_TYPE varchar(200),
		PRODUCT_LINE varchar(200),
		PRODUCT_TYPE varchar(200),
		PRODUCT varchar(200),
		REVENUE float,
		QUANTITY int
	)

CREATE TABLE dbo.CUSTOMER
	(
		CUST_ID int,
		ACCOUNT_CREATED varchar(200),
		CITY varchar(200),
		DOB varchar(200),
		EMAIL varchar(200),
		FIRST_NAME varchar(200),
		GENDER varchar(200),
		IP_ADDRESS varchar(200),
		LAST_NAME varchar(200),
		US_STATE varchar(200),
		TIMEZONE varchar(200),
		ZIP int,
		AGE int,
		ACCOUNT_AGE int,
		ACCOUNT_DELTA int,
		REGION varchar(200)
	)

/* Insert csv data into tables */
BULK INSERT dbo.PURCHASE
FROM 'C:\AdventureWorks_Backup\purchase_info.csv'
WITH
(
	DATAFILETYPE = 'char',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)

BULK INSERT dbo.PRODUCT
FROM 'C:\AdventureWorks_Backup\product_info.csv'
WITH
(
	DATAFILETYPE = 'char',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)

BULK INSERT dbo.CUSTOMER
FROM 'C:\AdventureWorks_Backup\customer_py_cleaned.csv'
WITH
(
	DATAFILETYPE = 'char',
	FIELDTERMINATOR = ',',
	FIRSTROW = 2
)

