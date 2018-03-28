CREATE DATABASE PEOPLE
USE PEOPLE
CREATE TABLE Contacts (
ID char(1) NOT NULL,
FirstName varchar(15),
LastName varchar(15),
PhoneNum varchar(8),
StreetAddr varchar(35),
City varchar(25),
ST char(2),
Zip char(5)

CONSTRAINT PK_Contacts_ID PRIMARY KEY (ID)
)
INSERT INTO Contacts(ID, FirstName, LastName, PhoneNum, StreetAddr, City, ST,Zip)
VALUES ('1', 'Deion', 'Morena', '555-1212', '123 Main St.', 'Charlotte', 'NC', '28269')

INSERT INTO Contacts(ID, FirstName, LastName, PhoneNum, StreetAddr, City, ST,Zip)
VALUES ('2', 'Anu', 'Patel', '555-2376', '3321 Cherry Lane', 'Cornelius', 'NC', '28031')

INSERT INTO Contacts(ID, FirstName, LastName, PhoneNum, StreetAddr, City, ST,Zip)
VALUES ('3', 'Aaron', 'Mohamed', '555-8765', '320 Sycamore Dr.', 'Davidson', 'NC', '28036')

INSERT INTO Contacts(ID, FirstName, LastName, PhoneNum, StreetAddr, City, ST,Zip)
VALUES ('4', 'Layla', 'Stanwood', null, '21B Baker St.', 'Huntersville', 'NC', '28078')

INSERT INTO Contacts(ID, FirstName, LastName, PhoneNum, StreetAddr, City, ST,Zip)
VALUES ('5', 'Min', 'Nguyen', null, '100 Madison Ave.', 'Mooresville', 'NC', '28117')

SELECT *
FROM Contacts

Select FirstName, LastName, PhoneNum
FROM Contacts

SELECT FirstName AS 'First Name', FirstName AS 'Last Name', PhoneNum AS 'Phone Number'
FROM Contacts

SELECT LastName +  ', '  + FirstName as 'Full Name', PhoneNum as 'Phone Number', StreetAddr AS 'Street Address', City, ST as 'State', Zip as 'Zip Code'
FROM Contacts

SELECT LastName +  ', '  + FirstName as 'Full Name', PhoneNum as 'Phone Number', StreetAddr + ', ' + City + ', ' + ST + ' ' + Zip  AS 'Street Address'
FROM Contacts

