--Cleansed DIM_Customers Table --
SELECT 
  c.customerkey AS [CustomerKey], 
  --      ,[GeographyKey]
  --      ,[CustomerAlternateKey]
  --      ,[Title]
  c.firstname AS [FirstName], 
  --      ,[MiddleName]
  c.lastname AS [LastName], 
  c.firstname + ' ' + lastname AS [FullName], 
  -- Combined First and Last names -- 
  --      ,[NameStyle]
  --     ,[BirthDate]
  --      ,[MaritalStatus]
  --    ,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' Then 'Female' END AS Gender, 
  --      ,[EmailAddress]
  --      ,[YearlyIncome]
  --      ,[TotalChildren]
  --      ,[NumberChildrenAtHome]
  --      ,[EnglishEducation]
  --      ,[SpanishEducation]
  --      ,[FrenchEducation]
  --      ,[EnglishOccupation]
  --      ,[SpanishOccupation]
  --      ,[FrenchOccupation]
  --      ,[HouseOwnerFlag]
  --      ,[NumberCarsOwned]
  --      ,[AddressLine1]
  --      ,[AddressLine2]
  --      ,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  -- ,[CommuteDistance]
  g.city AS [Customer City] -- Joined in Customer CIty from Geog Table --
FROM 
  dbo.dimcustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey --
