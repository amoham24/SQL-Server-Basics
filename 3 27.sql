Create Database area

Create Table Person(
First_name varchar(25),
Middel_init char(1),
Last_Name varchar(25),

)
create table Doctor(
ID char(8),
Specializtion varchar(20)
)
create table Patient(
SSN char(8),
Phone_num char(10),
Street_adress varchar(25),
City varchar(25),
State char(2),
Zipcode char(5),

CONSTRAINT PK_Patient_SSN PRIMARY KEY (SSN)
)

create table Prescription(
Num_pills int,
Amount_to_take int,
Frequency float,
Date_filled date,
Prescription_num int,
Exp_date date,
Special_instruction text,
CONSTRAINT PK_Prescription_PresNum PRIMARY KEY (Prescription_num)
)

create table Pharmacy(
Phone_num char(10),
Street_adress varchar(25),
City varchar(25),
State char(2),
Zipcode char(5),
Name varchar(20),
CONSTRAINT PK_Phone_num PRIMARY KEY (Phone_num)
)

create table medicine(
Side_effects text
)

create table Generic(
Generic_name varchar(25),
Manufacturer varchar(25)
)

create table Name_Brand (
Breand_name varchar(25),
Owning_Company varchar(25)

)
