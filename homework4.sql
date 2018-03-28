CREATE DATABASE LemonadeStand
USE LemonadeStand

CREATE TABLE EmployeeSales(
ID char(1) NOT NULL,
FirstName varchar(25),
LastName varchar(20),
Year char(4) NOT NULL,
Q1Sales float,
Q2Sales float,
Q3Sales float,
Q4Sales float,
CONSTRAINT PK_EmployeeSales_ID_Year Primary Key (ID, Year)
)
INSERT INTO EmployeeSales(ID, FirstName, LastName, Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
VALUES ('1', 'Christina', 'Yonkers', '2011', 268.39, 310.43, 410.11, 289.92)

INSERT INTO EmployeeSales(ID, FirstName, LastName, Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
VALUES ('1', 'Christina', 'Yonkers', '2012', 292.03, 305.25, 499.84, 416.22)

INSERT INTO EmployeeSales(ID, FirstName, LastName, Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
VALUES ('2', 'Bill', 'Chisholm', '2012', 199.44, 215.55, 312.50, 278.88)

INSERT INTO EmployeeSales(ID, FirstName, LastName, Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
VALUES ('3', 'Belinda', 'Johnson', '2011', 215.25, 188.14, 266.34, 244.20)

INSERT INTO EmployeeSales(ID, FirstName, LastName, Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
VALUES ('4', 'Greg', 'Hathaway', '2010', 188.15, 205.11, 383.75, 301.01)

INSERT INTO EmployeeSales(ID, FirstName, LastName, Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
VALUES ('4', 'Greg', 'Hathaway', '2011', 245.96, 360.33, 588.02, 489.00)

INSERT INTO EmployeeSales(ID, FirstName, LastName, Year,Q1Sales,Q2Sales,Q3Sales,Q4Sales)
VALUES ('4', 'Greg', 'Hathaway', '2012', 307.68, 362.66, 601.23, 501.17)

SELECT LastName +  ', '  + FirstName as 'Full Name', Year, Q1Sales  AS 'Q1 Sales', Q2Sales AS 'Q2 Sales', Q3Sales 'Q3 Sales', Q4Sales 'Q4 Sales'
FROM EmployeeSales

SELECT LastName +  ', '  + FirstName as 'Full Name', Year, Q1Sales  AS 'Q1 Sales', Q2Sales AS 'Q2 Sales', Q3Sales 'Q3 Sales', Q4Sales 'Q4 Sales', Q1Sales + Q2Sales + Q3Sales + Q4Sales AS 'Yearly Sales'
FROM EmployeeSales