-- Problem 1: List all products and their suppliers.
use AdventureWorks2012
select * from [Production].[Product]
select * from [Purchasing].[ProductVendor]
select * from [Purchasing].[Vendor]

select 
p.name ProductName,
ppv.productID,
pv.name as suplier
from Production.Product p join Purchasing.ProductVendor ppv on
p.productid=ppv.productid join Purchasing.Vendor pv on
ppv.BusinessEntityID=pv.BusinessEntityID

-- Problem 2: List all orders placed by a specific customer 
select * from [Production].[Product]
select * from [Sales].[SalesOrderDetail]
select * from [Sales].[SalesOrderHeader]

select
	p.name,
	sd.productID,
	sd.UnitPrice,
	sh.OrderDate,
	sh.CustomerID
from
Sales.SalesOrderDetail sd
join sales.SalesOrderHeader sh on sd.SalesOrderID=sh.SalesOrderID
join Production.Product p on p.ProductID=sd.ProductID
where sh.CustomerID='30052'

-- Problem 3:List all customers and their respective sales territories.
select * from [Person].[Person]
select * from [Sales].[Store]
select * from [Sales].[Customer]
select * from [Sales].[SalesTerritory]

select
pp.firstname,
pp.lastname,
sc.customerid,
st.name as Terrytory
from [Sales].[Customer] sc join Sales.SalesTerritory st on sc.TerritoryID=st.TerritoryID
join Person.Person PP ON sc.PersonID=pp.BusinessEntityID

-- Problem 4: List all products with their subcategories and categories.
select * from [Production].[Product]
select * from [Production].[ProductCategory]
select * from [Production].[ProductSubcategory]

select
pp.ProductID,
pp.Name as ProductName,
pc.Name as CategoryName,
ps.name as SubcategoryName
from [Production].[ProductCategory] pc join [Production].[ProductSubcategory] ps on pc.ProductCategoryID=ps.ProductCategoryID
join Production.Product pp on pp.ProductSubcategoryID=ps.ProductSubcategoryID

-- Problem 5: List all vendors and their respective purchase order approvers.
select * from [Purchasing].[ProductVendor]
select * from [Purchasing].[Vendor]