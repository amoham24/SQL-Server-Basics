USE AutoDealer3

--1
SElECT *
FROM SalesVisits JOIN Customers ON 
	 SalesVisits.CustomerID = Customers.ID 
	 JOIN SalesPeople ON SalesVisits.SalesPersonID = SalesPeople.ID
ORDER BY VisitDate 

--2
SELECT SalesVisits.VisitDate, FirstName , COUNT(SalesVisits.VisitDate) as 'Number of Visits'
FROM SalesVisits JOIN SalesPeople ON SalesVisits.SalesPersonID = SalesPeople.ID
Group BY SalesPeople.FirstName, SalesVisits.VisitDate

--3
SELECT Customers.FirstName, SalesVisits.VisitDate, SalesPeople.FirstName, Cars.Manufacturer, Cars.Model, Cars.Year, Cars.Cost
FROM SalesVisits JOin SalesVisitInterests ON 
	 SalesVisits.SalesVisitID = SalesVisitInterests.SalesVisitID
	 JOIN Customers ON
	 Customers.ID = SalesVisits.CustomerID
	 Join SalesPeople ON
	 SalesPeople.ID = SalesVisits.SalesPersonID
	 JOIN Cars ON  
	 Cars.VehicleID = SalesVisitInterests.VehicleID
