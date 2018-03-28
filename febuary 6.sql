USE AutoDealer
--1
SELECT COUNT(*)
FROM RegisteredCars
--2
SELECT COUNT(*)
FROM RegisteredCars
WHERE Color = 'blue'
--3
SELECT COUNT(*)
FROM RegisteredCars
WHERE Color = 'silver' and  Year> 1997 AnD Year < 2005


--4
SELECT AVG(Price)
FROM RegisteredCars
WHERE Model = 'Focus' and Manufacturer = 'Ford'

--5
SELECT CONVERT(decimal(7,2),AVG(Price) ) 
FROM RegisteredCars
WHERE Model = 'Focus' and Manufacturer = 'Ford'

--6
SELECT MAX(Price)
FROM RegisteredCars
WHERE  Year = 2011

SELECT *
FROM RegisteredCars
WHERE  Price = (SELECT MAX(Price)
				FROM RegisteredCars
				WHERE  Year = 2011) 
				and Year = 2011

--7
SELECT *
FROM RegisteredCars
WHERE  Price = (SELECT MIN(Price)
				FROM RegisteredCars
				WHERE  Manufacturer = 'Volkswagen' AND Color = 'red')  AND Manufacturer ='Volkswagen'


--8
SELECT Manufacturer, COUNT(*)
FROM RegisteredCars
WHERE Price < 22000 and Year > 2005
GROUP BY Manufacturer

--9
SELECT Manufacturer, COUNT(*) AS 'Number of cars'
FROM RegisteredCars
WHERE Price < 22000 and Year > 2005
GROUP BY Manufacturer 
Order BY [Number of cars]  DESC

--10
SELECT COUNT(*)
FROM RegisteredCars
WHERE PlateNumber LIKE 'ZX%' AND Color = 'red'

--11

SELECT *
FROM RegisteredCars
WHERE PlateNumber LIKE 'ZX%' AND Color = 'red'

--12
SELECT *
FROM RegisteredCars
WHERE Year < 2009 AND VehicleID LIKE '_______Y%'

--13
SELECT *
FROM RegisteredCars
WHERE Year < 2009 AND VehicleID LIKE '_______Y%'
ORDER BY Manufacturer, Model

--14
SELECT Color
FROM RegisteredCars
WHERE Year = 1997 and Manufacturer = 'Chevrolet' and Model = 'Camaro'

--15

SElEcT Manufacturer, Model, AVG(Price)
FROM RegisteredCars
WHERE YEar > 2000
Group By Manufacturer, Model
