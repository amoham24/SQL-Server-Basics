CREATE DATABASE HelloWorld
GO

USE HelloWorld
GO

CREATE TABLE Students (
		FirstName	varchar(50)	NOT NULL,
		LastName	varchar(50)	NOT NULL
	)
	GO

	INSERT INTO Students (FirstName, LastName)
	VALUES	('Tom', 'Polk')

	CREATE TABLE Employee (
		FirstName	varchar(30)	NOT NULL,
		LastName	varchar(30)	NOT NULL,
		BageNumber	char(7) NOT NULL,
		HireDate	date
	)
	GO
	INSERT INTO Employee(FirstName, LastName, BageNumber, HireDate)
	VALUES ('Sooumaya', 'Jim', '1234567', '2009-05-25')

	CREATE TABLE Courses (
		CourseID	int	NOT NULL,
		CourseName	varchar(100)	NOT NULL,
		CourseDescription	text NOT NULL,
	)
	GO
	INSERT INTO Courses(CourseID, CourseName, CourseDescription)
	VALUES ('3160', 'coursename', 'coursedec')


	CREATE TABLE SportingEvents (
		EventID int NOT NULL,
		EventName varchar(50) NOT NULL,
		CONSTRAINT PK_SportingEvents PRIMARY KEY CLUSTERED (EventID ASC)
	)
	CREATE TABLE Athletes (
		AthleteID int NOT NULL,
		AthleteName varchar(50) NOT NULL,
		CONSTRAINT PK_Athletes PRIMARY KEY CLUSTERED (AthleteID ASC)
	)
	CREATE TABLE EventRegistration (
		AthleteID int NOT NULL,
		EventID int NOT NULL,
		CONSTRAINT PK_EventRegistration PRIMARY KEY CLUSTERED (AthleteID ASC, EventID ASC),
		CONSTRAINT PK_EventRegistration_Athletes FOREIGN KEY (AthleteID) REFERENCES Athletes(AthleteID) ON DELETE CASCADE, 
		CONSTRAINT PK_EventRegistration_SportingEvents FOREIGN KEY (EventID) REFERENCES SportingEvents(EventID) ON DELETE NO ACTION
	)
	ALTER TABLE EventRegistration ADD
		CONSTRAINT FK_EventRegistration_Athletes_Update FOREIGN KEY (AthleteID)
		REFERENCES Athletes(AthleteID) ON UPDATE CASCADE