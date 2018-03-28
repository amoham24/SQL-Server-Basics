USE AutoDealer3

SELECT AppointmentDate, Count(*) as 'number of appointments'
FROm ServiceAppointments
Group by AppointmentDate

SELECT Manufacturer, AppointmentDate, Count(*) as 'number of appointments'
FROm ServiceAppointments JOIN CArs ON ServiceAppointments.VehicleID = Cars.VehicleID
Group by Manufacturer, AppointmentDate

SELECT MechanicID, SUM(COST)
FROM ServiceAppointments JOIN AppointmentServices ON ServiceAppointments.AppointmentID = AppointmentServices.AppointmentID JOIN  Services ON  AppointmentServices.ServiceID = Services.ServiceID
GROUP BY MechanicID

SELECT AppointmentID, Customers.FirstName,AppointmentDate, Mechanics.FirstName, Cars.Model
FROM ServiceAppointments JOIN Customers ON ServiceAppointments.CustomerID = Customers.ID 
						JOIN Cars ON ServiceAppointments.VehicleID = Cars.VehicleID
						JOIN Mechanics ON ServiceAppointments.MechanicID = Mechanics.ID, Services 
						GROUP BY Customers.FirstName

SELECT AppointmentID AS 'Appointment ID:', 
    Customers.FirstName + Customers.LastName AS 'Customer Name:', 
    CAST(AppointmentDate AS varchar) + ', ' + CAST(AppointmentTime AS varchar) AS 'Appointment Date/Time:',
    Mechanics.FirstName + Mechanics.LastName AS 'Mechanic Name:',
    CAST(Cars.Year AS varChar) + Cars.Manufacturer + Cars.Model + '(' + Cars.Color + ')' + 'VIN:' + Cars.VehicleID AS 'Vehicle Information'
FROM Customers JOIN ServiceAppointments ON
  Customers.ID = ServiceAppointments.CustomerID
  JOIN Mechanics ON 
  Mechanics.ID = ServiceAppointments.MechanicID
  JOIN Cars ON
  Cars.VehicleID = ServiceAppointments.VehicleID
WHERE AppointmentID = 3

SELECT ServiceName, AllottedTime, Cost
FROM Services
WHERE  COST < 30

SELECT 'TOTAL', SUM(AllottedTime), SUM(Cost)
FROM Services
WHERE  COST < 30


--umm
SELECT AppointmentID, SUM(Cost) As 'TotalCost'
FROM ServiceAppointments SA JOIN AppointmentServices ASV ON SA.AppointmentID= ASV.AppointmentID JOIN
Services S ON S.ServiceID = ASV.ServiceID
GROUP SA.AppointmentID

SELECT MAX(TotalCost)
FROM (
SELECT Sa.AppointmentID, (SUM(Cost)) AS TotalCost
FROM ServiceAppointments SA JOIN AppointmentServices ASV ON SA.AppointmentID = ASV.AppointmentID JOIN
Services


SELECT C.FirstNAme + ' ' + C.LastName




--Customers, Mechanics, Cars, Services

