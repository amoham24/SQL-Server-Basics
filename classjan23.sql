CREATE DATABASE Cafe
USE Cafe
GO
CREATE TABLE Cafe(
	EmployeeID char(7) NOT NULL,
	FirstName varchar(20),
	LastName varchar(20),
	Position varchar(20)
	CONSTRAINT PK_EmployeeId PRIMARY KEY (EmployeeID)
	)
		GO
		USE Cafe
	INSERT INTO Employees (EmployeeID, FirstName, LastName, Position)
	VALUES	('2185876', 'Robert', 'Caudle', 'Chef')

	INSERT INTO Employees (EmployeeID, FirstName, LastName, Position)
	VALUES	('2863982', 'Soumya', 'Boyanapalli', 'Manager')

	INSERT INTO Employees (EmployeeID, FirstName, LastName, Position)
	VALUES	('7643382', 'Alison', 'Demers', 'Hostess')

	INSERT INTO Employees (EmployeeID, FirstName, LastName, Position)
	VALUES	('4322121', 'David', 'Fires', 'Waiter')

	INSERT INTO Employees (EmployeeID, FirstName, LastName, Position)
	VALUES	('6555322', 'Thomas', 'Woods', 'Dishwasher')

	INSERT INTO Employees (EmployeeID, FirstName, LastName, Position)
	VALUES	('2322391', 'Timothy', 'Young', 'Busboy')

	INSERT INTO Employees (EmployeeID, FirstName, LastName, Position)
	VALUES	('3562328', 'Frank', 'Lemon', 'sous chef')

	ALTER DATABASE Resteraunt MODIFY NAME = Cafe
	USE Cafe
	EXEC SP_RENAME 'Employees.FirstName', 'FullName' 
	UPDATE Employees
	SET FullName = FullName + ' ' + LastNames

	ALTER TABLE Employees
	DROP COLUMN LastName

	ALTER TABLE Employees
	ADD HireDate date

	UPDATE Employees SET HireDate = '01-01-2013'
	WHERE EmployeeID = '2185876'

	UPDATE Employees SET HireDate = '01-01-2013'
	WHERE Position = 'Manager'

	UPDATE Employees SET HireDate = '01-01-2013'
	WHERE Position = 'Hostess'

	UPDATE Employees SET HireDate = '01-01-2013'
	WHERE EmployeeID = '2185876'

	UPDATE Employees SET HireDate = '01-01-2013'
	WHERE EmployeeID = '2185876'