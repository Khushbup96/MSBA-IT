USE AdventureWorks2012; /*Set current database*/



/*1. Display the total amount collected from the orders for each order date. */

select modifieddate, sum(linetotal) from sales.salesorderdetail 
group by modifieddate

/*2. Display the total amount collected after selling the products, 774 and 777. */
select productid, sum(unitprice) from sales.salesorderdetail 
where productid in (774,777)
group by (productid)



/*3. Write a query to display the sales person ID of all the sales persons and the name of the territory to which they belong.*/
Select sales.salespersonid, sales.salesterritory.name from sales.salesperson 
join sales.salesterritory on sales.salesperson.territoryid = sales.salesterritory.territoryid



/*4. Write a query to display the Business Entities of the customers that have the 'Vista' credit card.*/
select pc.businessentityid
        ,p.firstname
        ,p.lastname
        ,cc.cardtype
from sales.personcreditcard as pc
        ,sales.creditcard as cc
        ,person.person AS p


/*5, Write a query to display all the country region codes along with their corresponding territory IDs*/

Select countryregioncode, territoryid from sales.salesterritory


/*6. Find out the average of the total dues of all the orders.*/
select avg(totaldue) 
from sales.salesorderheader 


/*7. Write a query to report the sales order ID of those orders where the total value is greater than the average of the total value of all the orders.*/

select salesorderid, totaldue 
from sales.salesorderheader
where totaldue>(select avg(totaldue) from sales.salesorderheader)











