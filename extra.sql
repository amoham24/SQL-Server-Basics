CREATE DATABASE University
USE University
CREATE TABLE Student(
StudentName varchar(20)
)
AlTER TABLE Student
ADD StudentID char(5) NOT NULL

ALTER TABLE Student
ADD CONSTRAINT PK_Student PRIMARY KEY (StudentID)

INSERT INTO Student(StudentName, StudentID)
VALUES('Letersky', 38214)

INSERT INTO Student(StudentName, StudentID)
VALUES('Altvater', 54907)

INSERT INTO Student(StudentName, StudentID)
VALUES('Aiken', 66324)

INSERT INTO Student(StudentName, StudentID)
VALUES('Marra', 70542)

EXEC SP_RENAME 'Student.StudentName', 'LastName'

ALTER TABLE Student
ADD FirstName varchar(20)

UPDATE Student
SET FirstName = 'Tim'
WHERE LastName = 'Letersky'

UPDATE Student
SET FirstName = 'Jo'
WHERE LastName = 'Altvater'

UPDATE Student
SET FirstName = 'Jim'
WHERE LastName = 'AIken'

UPDATE Student
SET FirstName = 'Toe'
WHERE LastName = 'Marra'

ALTER TABLE Student
ADD FullName varchar(21)

UPDATE Student
SET FullName = FirstName +' ' + LastName

CREATE TABLE Faculty(
FacultyID char(4) NOT NULL,
FacultyName varchar(20)

 CONSTRAINT PK_Faculty PRIMARY KEY (FacultyID)
)
CREATE TABLE Course(
CourseID char(8) NOT  NULL,
CourseName varchar(25)
CONSTRAINT PK_Course PRIMARY KEY (CourseID)
)
CREATE TABLE Qualified(
FacultyID char(4) NOT NULL,
CourseID char(8) NOT NULL,
DateQualified date

CONSTRAINT PK_Qualified PRIMARY KEY (FacultyID, CourseID),

CONSTRAINT FK_Qualified_Faculty FOREIGN KEY (FacultyID) References Faculty(FacultyID)
ON DELETE NO ACTION ON UPDATE CASCADE,

CONSTRAINT FK_Qualified_Course FOREIGN KEY (CourseID) References Course(CourseID)
ON DELETE NO ACTION ON UPDATE CASCADE
)
USE University
CREATE TABLE Section(
SectionNo char(4) NOT NULL,
Semester varchar(10) NOT NULL,
CourseID char(8) NOT NULL

CONSTRAINT PK_Section PRIMARY KEY (SectionNo, Semester, CourseID),

CONSTRAINT FK_Section_Course FOREIGN KEY (CourseID) References Course(CourseID)
ON DELETE NO ACTION ON UPDATE CASCADE
)

CREATE TABLE Registration(
StudentID char(5) NOT NULL,
SectionNo char(4) NOT NULL,
Semester varchar(10) NOT NULL,
CourseID char(8) NOT NULL

CONSTRAINT PK_Registration PRIMARY KEY (StudentID, SectionNo, Semester , CourseID)

CONSTRAINT FK_Registration_StudentID FOREIGN KEY (StudentID) References Student(StudentID)
ON DELETE NO ACTION ON UPDATE CASCADE,

CONSTRAINT FK_Registration_SectionNo FOREIGN KEY (SectionNo, Semester, CourseID) References Section(SectionNo, Semester, CourseID)
ON DELETE NO ACTION ON UPDATE CASCADE,
)
USE University

SELECT Student.FullName,Course.CourseID, Course.CourseName,
Section.SectionNo, Section.Semester
FROM Student JOIN Registration ON Student.StudentID =
Registration.StudentID

JOIN Section ON Registration.SectionNo = Section.SectionNo

JOIN Course ON Section.CourseID = Course.CourseID