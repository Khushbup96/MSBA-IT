use AdventureWorksDW2012;


/*1, Display number of orders and total sales amount(sum of SalesAmount) of Internet Sales in 1st quarter each year in each country. Note: your result set should produce a total of 18 rows. */
select k.calendarquarter, k.calendaryear, p.salesamount, p.orderdatekey, a.salesterritorycountry
from dbo.dimdate k, dbo.factinternetsales p, dbo.dimsalesterritory a
group by a.salesterritorycountry

/*2, Show total reseller sales amount (sum of SalesAmount), calendar quarter of order date, product category name and reseller’s business type by quarter by category and by business type in 2006. Note: your result set should produce a total of 44 rows. */

select k.calenderquarter, p.salesamount, p.orderdate, p.orderkey
from dbo.dimreseller k, dbo.factresellersales

/*3, Based on 2, perform an OLAP operation: slice. In comment, describe how you perform the slicing, i.e. what do you do to what dimension(s)? Why is it a operation of slicing?*/

Slicing is selecting one dimention of the cube

/*4, Based on 2, perform an OLAP operation: drill-down. In comment, describe how you perform the drill-down, i.e. what do you do to what dimension(s)? Why is it a operation of drilling-down?*/

Drilling down is adding columns to provide more detail