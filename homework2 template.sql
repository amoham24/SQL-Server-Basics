/* HOMEWORK #2 TEMPLATE */

/*
  Use this template to format your submission for homework #2.  Be sure
  to put your SQL statements in the areas indicated below.
  See the homework assignment for specific directions on what is needed.
  Please follow the format specified.  This is necessary to make grading
  easier and more efficient.  Failure to follow this template will result
  in a deduction to your grade for this assignment.
*/

/********  SECTION FOR DATABASE # 1  ******************************************/
/* Put the SQL code to create Database #1 just after this comment */
CREATE DATABASE Hospital
/* Put the SQL code to create the 1st table for Database #1 just after this comment */
GO
USE Hospital
CREATE TABLE Employees (
	employeeID char(5), 
	salary float, 
	position varchar(20))
/* Put the SQL code to insert data into the the 1st table for Database #1 just after this comment */
GO
INSERT INTO Employees (employeeID , salary, position)
VALUES (58512 , 63900.80, 'Manager')

INSERT INTO Employees (employeeID , salary, position)
VALUES (88617 , 76900.80, 'CEO')

INSERT INTO Employees (employeeID , salary, position)
VALUES (43583 , 12900.80, 'Janitor')

/* Put the SQL code to create the 2nd table for Database #1 just after this comment */
GO
USE Hospital
CREATE TABLE Volunteer (
	Credits int, 
	School varchar(30), 
	FirstName varchar(25))
/* Put the SQL code to insert data into the the 2nd table for Database #1 just after this comment */
GO
INSERT INTO Volunteer(Credits, School, FirstName)
VALUES (4 , 'UNCC', 'Ahmed')

INSERT INTO Volunteer(Credits, School, FirstName)
VALUES (3 , 'UNC', 'Tim')

INSERT INTO Volunteer(Credits, School, FirstName)
VALUES (4 , 'NCU', 'Ben')

/* Put the SQL code to create the 3rd table for Database #1 just after this comment */
GO
USE Hospital
CREATE TABLE Patients(
	FullName varchar(40), 
	CurrentDate date, 
	Symptoms text)
/* Put the SQL code to insert data into the the 3rd table for Database #1 just after this comment */
GO
INSERT INTO Patients(FullName, CurrentDate, Symptoms)
VALUES ('Ahmed Mohamed' , '01-10-2017', 'a cold')

INSERT INTO Patients(FullName, CurrentDate, Symptoms)
VALUES ('Alan Thomas' , '01-15-2017', 'nausia, heart pain')

INSERT INTO Patients(FullName, CurrentDate, Symptoms)
VALUES ('Richard Watsom' , '11-20-2017', 'fever, back pain, lung problems')

/********  SECTION FOR DATABASE # 2  ******************************************/
/* Put the SQL code to create Database #2 just after this comment */
CREATE DATABASE PetShop
/* Put the SQL code to create the 1st table for Database #2 just after this comment */
GO
USE PetShop
CREATE TABLE Animals(
	AnimalName varchar(25), 
	Age int, 
	Allergies text)
/* Put the SQL code to insert data into the the 1st table for Database #2 just after this comment */
GO
INSERT INTO Animals(AnimalName, Age, Allergies)
VALUES ('Dog', 4, 'peanuts and eggs')

INSERT INTO Animals(AnimalName, Age, Allergies)
VALUES ('Cat', 7, 'none')

INSERT INTO Animals(AnimalName, Age, Allergies)
VALUES ('Fish', 3, 'none')

/* Put the SQL code to create the 2nd table for Database #2 just after this comment */
GO
USE PetShop
CREATE TABLE Supplies(
	SupplyName varchar(25), 
	MoneySpent float, 
	DatePurchased date)
/* Put the SQL code to insert data into the the 2nd table for Database #2 just after this comment */
GO
INSERT INTO Supplies(SupplyName, MoneySpent, DatePurchased)
Values ('Cages', 270.60, '04-09-2014')

INSERT INTO Supplies(SupplyName, MoneySpent, DatePurchased)
Values ('Animal Food', 380.90, '04-11-2014')

INSERT INTO Supplies(SupplyName, MoneySpent, DatePurchased)
Values ('Rope', 22.56, '04-22-2014')
/* Put the SQL code to create the 3rd table for Database #2 just after this comment */
GO
USE PetShop
CREATE TABLE Workers(
	WorkerName varchar(25), 
	WorkerID char(7), 
	HourlyWage float)
/* Put the SQL code to insert data into the the 3rd table for Database #2 just after this comment */
GO
INSERT INTO Workers(WorkerName, WorkerID, HourlyWage)
VALUES ('Tim', '5478958', 11.50)

INSERT INTO Workers(WorkerName, WorkerID, HourlyWage)
VALUES ('Allen', '5948998', 17.90)

INSERT INTO Workers(WorkerName, WorkerID, HourlyWage)
VALUES ('Sandy', '5478218', 13.25)

/********  SECTION FOR DATABASE # 3  ******************************************/
/* Put the SQL code to create Database #3 just after this comment */
CREATE DATABASE Military
/* Put the SQL code to create the 1st table for Database #3 just after this comment */
GO
USE Military
CREATE TABLE Guns(
	GunName varchar(25), 
	AmmoHeld int, 
	DatePurchased date)
/* Put the SQL code to insert data into the the 1st table for Database #3 just after this comment */
GO
INSERT INTO Guns(GunName, AmmoHeld, DatePurchased)
VALUES ('Ak-47', 20, '08-20-1997')

INSERT INTO Guns(GunName, AmmoHeld, DatePurchased)
VALUES ('M-16', 25, '07-20-1965')

INSERT INTO Guns(GunName, AmmoHeld, DatePurchased)
VALUES ('M4', 30, '04-23-1942')
/* Put the SQL code to create the 2nd table for Database #3 just after this comment */
GO
USE Military
CREATE TABLE Soilders(
	SoilderName varchar(30), 
	Age int, 
	SoilderID char(4))
/* Put the SQL code to insert data into the the 2nd table for Database #3 just after this comment */
GO
INSERT INTO Soilders(SoilderName, Age, SoilderID)
VALUES ('Jumbo', 7, '6132')

INSERT INTO Soilders(SoilderName, Age, SoilderID)
VALUES ('Forrest', 33, '2119')

INSERT INTO Soilders(SoilderName, Age, SoilderID)
VALUES ('Gump', 29, '9850')
/* Put the SQL code to create the 3rd table for Database #3 just after this comment */
GO
USE Military
CREATE TABLE Battles(
	BattleName varchar(30), 
	StartDate date, 
	EndDate date)
/* Put the SQL code to insert data into the the 3rd table for Database #3 just after this comment */
GO
INSERT INTO Battles(BattleName, StartDate, EndDate)
VALUES ('The Battle of Jumbo', '02-10-2039', '08-04-2041')

INSERT INTO Battles(BattleName, StartDate, EndDate)
VALUES ('War of Attrition', '08-14-2022', '05-08-2031')

INSERT INTO Battles(BattleName, StartDate, EndDate)
VALUES ('French Revolution', '09-07-2081', '10-12-2090')

/********  SECTION FOR DATABASE # 4  ******************************************/
/* Put the SQL code to create Database #4 just after this comment */
CREATE DATABASE University
/* Put the SQL code to create the 1st table for Database #4 just after this comment */
GO
USE University
CREATE TABLE Instuctors (
	FirstName varchar(15),
	LastName varchar(15),
	Salary float)
/* Put the SQL code to insert data into the the 1st table for Database #4 just after this comment */
GO
INSERT INTO Instuctors(FirstName, LastName, Salary)
VALUES ('Thomas', 'Polk', 7.25)

INSERT INTO Instuctors(FirstName, LastName, Salary)
VALUES ('Celine', 'Dion', 4.25)

INSERT INTO Instuctors(FirstName, LastName, Salary)
VALUES ('Adam', 'Sandler', 604500.50)
/* Put the SQL code to create the 2nd table for Database #4 just after this comment */
GO
USE University
CREATE TABLE Students (
	FullName varchar(35),
	StudentID char(8),
	Bio text)
/* Put the SQL code to insert data into the the 2nd table for Database #4 just after this comment */
GO
INSERT INTO Students(FullName, StudentID, Bio)
VALUES ('Ahmed Sandler', '90074123', 'Please give me an A in the class Prof Polk')

INSERT INTO Students(FullName, StudentID, Bio)
VALUES ('Tommy Polk', '90074872', 'Please give me, Ahmed, an A in the class Prof Polk')

INSERT INTO Students(FullName, StudentID, Bio)
VALUES ('Thomas Polkerson', '90074902', 'Please give me, Ahmed Mohamed, an A in the class Prof Polk')
/* Put the SQL code to create the 3rd table for Database #4 just after this comment */
GO
USE University
CREATE TABLE Buildings (
	HallName varchar(35),
	DateCreated date,
	MeaterialsUsed text)
/* Put the SQL code to insert data into the the 3rd table for Database #4 just after this comment */
GO
INSERT INTO Buildings(HallName, DateCreated, MeaterialsUsed)
VALUES ('Woodward Hall', '05-16-1977', 'Wood as well as iron, brick, and please give me an A')

INSERT INTO Buildings(HallName, DateCreated, MeaterialsUsed)
VALUES ('Kennedy Hall', '08-12-1920', 'Plastic as well as iron, brick, and please give me an A')

INSERT INTO Buildings(HallName, DateCreated, MeaterialsUsed)
VALUES ('Cone Hall', '07-22-1965', 'Copper as well as iron, brick, and please give me an A')

/********  SECTION FOR DATABASE # 5  ******************************************/
/* Put the SQL code to create Database #5 just after this comment */
CREATE DATABASE Gym
/* Put the SQL code to create the 1st table for Database #5 just after this comment */
GO
USE Gym
CREATE TABLE Members(
	MemberName varchar(25),
	MonthsPaidFor int,
	DateRegistered date)
/* Put the SQL code to insert data into the the 1st table for Database #5 just after this comment */
GO
INSERT INTO Members(MemberName, MonthsPaidFor, DateRegistered)
VALUES ('Thomas', 9, '06-15-2010')

INSERT INTO Members(MemberName, MonthsPaidFor, DateRegistered)
VALUES ('Polk', 13, '07-13-2012')

INSERT INTO Members(MemberName, MonthsPaidFor, DateRegistered)
VALUES ('Ahmed', 4, '06-20-2013')
/* Put the SQL code to create the 2nd table for Database #5 just after this comment */
GO
USE Gym
CREATE TABLE Trainors(
	TrainorName varchar(25),
	TrainingInfo text,
	PhoneNumber char(10))
/* Put the SQL code to insert data into the the 2nd table for Database #5 just after this comment */
GO
INSERT INTO Trainors(TrainorName, TrainingInfo, PhoneNumber)
VALUES ('Mike', 'We work on core and cardio', '7045670978')

INSERT INTO Trainors(TrainorName, TrainingInfo, PhoneNumber)
VALUES ('Tommy', 'We work on upper body and legs', '7045679031')

INSERT INTO Trainors(TrainorName, TrainingInfo, PhoneNumber)
VALUES ('Polky', 'We work on core and upper body', '7045672134')
/* Put the SQL code to create the 3rd table for Database #5 just after this comment */
GO
USE Gym
CREATE TABLE Machines(
	MachineName varchar(25),
	BodyPartFocused varchar(20),
	MaxWeight float)
/* Put the SQL code to insert data into the the 3rd table for Database #5 just after this comment */
GO
INSERT INTO Machines(MachineName, BodyPartFocused, MaxWeight)
VALUES ('AbPro', 'abs', 120.0)

INSERT INTO Machines(MachineName, BodyPartFocused, MaxWeight)
VALUES ('BenchBar', 'upperbody', 300.0)

INSERT INTO Machines(MachineName, BodyPartFocused, MaxWeight)
VALUES ('LegCruncher', 'legs', 250.0)