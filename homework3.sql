CREATE DATABASE School
USE School

/********************************1*******************/
CREATE TABLE Book(
BookID char(5) NOT NULL,
BookName varchar(30),
BookAuthor varchar(20)
)

/*PASS*/
INSERT INTO Book(BookID, BookName, BookAuthor)
VALUES ('51238', 'Beowulf', 'Tim Allen')

INSERT INTO Book(BookID, BookName, BookAuthor)
VALUES ('51238', 'Beowulf', null)

INSERT INTO Book(BookID, BookName, BookAuthor)
VALUES ('51238', null, null)

/*FAIL*/
INSERT INTO Book(BookID, BookName, BookAuthor)
VALUES (null, 'Beowulf', 'Tim Allen')

INSERT INTO Book(BookID, BookName, BookAuthor)
VALUES (null, 'Beowul', 'Tim ALlen')

INSERT INTO Book(BookID, BookName, BookAuthor)
VALUES (null, null, null)

/***************************2*****************************/

CREATE TABLE Professors(
ProfessorID char(5) NOT NULL,
DateBorn date,
NumberOfClasses int,

CONSTRAINT ck_Professors_MinAge CHECK( DateBorn < '1999-01-01'),

CONSTRAINT ck_Professors_DateAndClasses CHECK(( DateBorn > '1995-01-01') AND ( NumberOfClasses > 5)) 

)
/*PASS*/
INSERT INTO Professors(ProfessorID, DateBorn, NumberOfClasses)
VALUES ('12345', '1988-04-10', 6)

INSERT INTO Professors(ProfessorID, DateBorn, NumberOfClasses)
VALUES ('32154', '1990-07-11', 9)

INSERT INTO Professors(ProfessorID, DateBorn, NumberOfClasses)
VALUES ('56737', '1885-02-20', 7)

/*FAIL*/
INSERT INTO Professors(ProfessorID, DateBorn, NumberOfClasses)
VALUES ('12345', '2001-04-10', 6)

INSERT INTO Professors(ProfessorID, DateBorn, NumberOfClasses)
VALUES ('32154', '1997-07-11', 5)

INSERT INTO Professors(ProfessorID, DateBorn, NumberOfClasses)
VALUES ('56737', '2004-02-20', 2)


/******************************3*********************/

CREATE TABLE Janitor(
ID char(5) NOT NULL,
Age int,
Birthday date
CONSTRAINT PK_Janitor_ID PRIMARY KEY (ID)
)
/*PASS*/
INSERT INTO Janitor(ID, Age, Birthday)
VALUES ('12345', 5, '1988-04-10')

/*FAIL*/
INSERT INTO Janitor(ID, Age, Birthday)
VALUES (null, 5, '1988-04-10')


/*************************************4********************************/
CREATE TABLE Quizes(
QuizName varchar(25) NOT NULL UNIQUE,
DateGiven date,
MaxPoints int
)
/*PASS*/
INSERT INTO Quizes(QuizName, DateGiven, MaxPoints)
VALUES ('Vocabulary Quiz', '2017-12-04', 4)

INSERT INTO Quizes(QuizName, DateGiven, MaxPoints)
VALUES ('Sylabus Quiz', '2017-12-04', 4)

/*FAIL*/
INSERT INTO Quizes(QuizName, DateGiven, MaxPoints)
VALUES ('MATH Quiz', '2017-12-04', 4)

INSERT INTO Quizes(QuizName, DateGiven, MaxPoints)
VALUES ('MATH Quiz', '2017-12-04', 4)

/************************************5*************************************/
CREATE TABLE Students(
StudentID char(5),
StudentName varchar(25),
StudentAge int,
CONSTRAINT PK_Students_StudentID PRIMARY KEY (StudentID)
) 

CREATE TABLE Classes(
ClassID char(5),
ClassName varchar(25),
ClassCredits int,
CONSTRAINT PK_Classes_ClassID PRIMARY KEY (ClassID)
)

CREATE TABLE ClassRegistration(
StudentId char(5),
ClassID char(5),

CONSTRAINT PK_ClassRegistration_StudentID_ClassID PRIMARY KEY (StudentID, ClassID),

CONSTRAINT FK_ClassRegisration_StudentID FOREIGN KEY (StudentID) References Students(StudentID)
ON DELETE CASCADE,
CONSTRAINT FK_ClassRegistration_ClassID FOREIGN KEY (ClassID) References Classes(ClassID)
ON DELETE NO ACTION 
)
USE School
INSERT INTO Students(StudentID, StudentName, StudentAge)
VALUES ('54876', 'Kyle', 18)
INSERT INTO Students(StudentID, StudentName, StudentAge)
VALUES ('74904', 'Sam', 19)
INSERT INTO Students(StudentID, StudentName, StudentAge)
VALUES ('46736', 'John', 144)

INSERT INTO Classes(ClassID, ClassName, ClassCredits)
VALUES ('23175', 'MATH', 6)
INSERT INTO Classes(ClassID, ClassName, ClassCredits)
VALUES ('97838', 'GYM', 4)
INSERT INTO Classes(ClassID, ClassName, ClassCredits)
VALUES ('64738', 'SOC', 6)

INSERT INTO ClassRegistration(StudentID, ClassID)
VALUES ('54876', '23175')
INSERT INTO ClassRegistration(StudentID, ClassID)
VALUES ('74904', '97838')
INSERT INTO ClassRegistration(StudentID, ClassID)
VALUES ('46736', '64738')


DELETE FROM Students
WHERE StudentID = '54876'

DELETE FROM Classes
WHERE ClassID = '23175'


