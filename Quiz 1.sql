use AdventureWorksDW2012;


/*a.	Show First name and last name of employees whose job title is “Sales Representative”, ranking from oldest to youngest. You may use HumanResources.Employee table and Person.Person table. (14 rows)*/

select k.firstname, k.lastname, p.jobtitle, p.birthdate 
from person.person k, humanresources.employee p 
where k.businessentityID = p.businessentityID and p.jobtitle = 'sales representative' 
order by p.BirthDate asc

/*b.	Find out all the products which sold more than $5000 in total. Show product ID and name and total amount collected after selling the products. You may use LineTotal from Sales.SalesOrderDetail table and Production.Product table. (254 rows)*/

select  k.productID, p.name as productname, sum(k.LineTotal) as totalamountcollected
from sales.salesorderdetail k left join  production.product p on
k.productID = p.productID  
group by k.productID , p.name
having sum(k.linetotal) > 5000

/*c.	Show BusinessEntityID, territory name and SalesYTD of all sales persons whose SalesYTD is greater than $500,000, regardless of whether they are assigned a territory. You may use Sales.SalesPerson table and Sales.SalesTerritory table. (16 rows)*/

select k.businessentityid, p.Name as territoryname, k.salesytd
from sales.salesperson k 
left join sales.salesterritory p on k.territoryid = p.territoryID 
where k.salesytd > 500000

/*d.	Show the sales order ID of those orders in the year 2008 of which the total due is great than the average total due of all the orders of the same year. (3200 rows)*/
 
select k.linetotal, k.salesorderID, p.orderdate
from sales.salesorderdetail k, sales.salesorderheader p
where orderdate >= 2008-01-01

