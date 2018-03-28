USE AutoDealer
GO

SELECT Name, Revenue 
FROM SimpleSales
ORder by Revenue DESC

Select Name, Revenue,( CAST (Profit as decimal(7,2))/Revenue )as 'Profits Percent' 
FROM SimpleSales

Select Name, Revenue,( CAST (Profit as decimal(7,2))/Revenue )as 'Profits Percent' 
FROM SimpleSales
ORDER BY [Profits Percent]

SELECT COUNT(Profit)
FROM SimpleSales
WHERE Profit > 5000

SELECT   Name
FROM 	  SimpleSales
WHERE Profit > 5000

