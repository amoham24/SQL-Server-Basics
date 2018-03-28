USE AutoDealer3

--1
SElECT FirstName, LastName, AppointmentDate, COUNT(AppointmentDate) AS '# of Appointments'
FROM ServiceAppointments JOIN Mechanics ON 
	 ServiceAppointments.MechanicID = Mechanics.ID 
WHERE  AppointmentDate = '2013-02-15' 
Group By FirstName, LastName, AppointmentDate
ORDER BY FirstName

--2
SELECT FirstName, LastName, Year, Manufacturer, Model, AppointmentDate, AppointmentTime
FROM ServiceAppointments JOIN Customers ON 
	 ServiceAppointments.CustomerID = Customers.ID 
	 JOIN Cars ON ServiceAppointments.VehicleID = Cars.VehicleID
ORDER BY AppointmentDate, AppointmentTime

--3
SELECT ServiceName, COUNT(ServiceName) AS '# times performed', SUM(Cost) AS 'Total Cost'
FROM AppointmentServices JOIN ServiceAppointments ON 
	 AppointmentServices.AppointmentID = ServiceAppointments.AppointmentID 
	 JOIN Services ON AppointmentServices.ServiceID = Services.ServiceID
	 GROUP BY ServiceName
	 ORDER BY [Total Cost] DESC

--4

SELECT FirstName, LastName, COUNT(FirstName) AS '# services performed', SUM(Cost) AS 'Total Cost'
FROM AppointmentServices JOIN ServiceAppointments ON 
	 AppointmentServices.AppointmentID = ServiceAppointments.AppointmentID 
	 JOIN Services ON AppointmentServices.ServiceID = Services.ServiceID
	 JOIN Customers ON ServiceAppointments.CustomerID = Customers.ID
Group By FirstName, LastName
Order By LastName