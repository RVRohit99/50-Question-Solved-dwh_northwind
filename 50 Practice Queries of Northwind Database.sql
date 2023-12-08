-- use dwh_northwind_database

-- select * from categories

create a report that shows the CategoryName and Description from the categories table sorted by CategoryName.
-- select categoryname,
-- description
-- from categories
-- order by categoryname

Create a report that shows the ContactName, CompanyName, ContactTitle and Phone number from the customers table
sorted by Phone

-- select contactname,
-- companyname, 
-- contacttitle,
-- phone
-- from customers
-- order by phone

Create a report that shows the capitalized FirstName and capitalized LastName renamed as FirstName and Lastname 
respectively and HireDate from the employees table sorted from the newest to the oldest employee

-- select upper(firstname) as First_Name,
-- upper(lastname) as Last_Name,
-- hiredate
-- from employees
-- order by hiredate desc

Create a report that shows the top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight from the orders table sorted
by Freight in descending order.

-- select orderid,
-- orderdate,
-- shippeddate,
-- customerid,
-- freight
-- from orders
-- order by freight desc
-- limit 10

Create a report that shows all the CustomerID in lowercase letter and renamed as ID from the customers table

-- select lower(customerid) as ID
-- from customers

-- Create a report that shows the CompanyName, Fax, Phone, Country, HomePage from the suppliers table sorted by the 
-- Country in descending order then by CompanyName in ascending order?

-- select companyname,
-- fax,
-- phone,
-- country,
-- homepage
-- from suppliers
-- order by country desc , companyname asc

-- Create a report that shows CompanyName, ContactName of all customers from ‘Buenos Aires' only
 
-- select companyname,
-- contactname
-- from customers
-- where city = 'Buenos Aires'

-- Create a report showing ProductName, UnitPrice, QuantityPerUnit of products that are out of stock.

-- select productname,
-- unitprice,
-- quantityperunit
-- from products
-- where unitsinstock = 0

-- Create a report showing all the ContactName, Address, City of all customers not from Germany, Mexico, Spain.

-- select contactname, address, city
--  from customers
--  where country not in ('Germany','Mexico', 'Spain')

-- Create a report showing OrderDate, ShippedDate, CustomerID, Freight of all orders placed on 21 May 1996
 
-- select orderdate,
-- shippeddate,
-- customerid,
-- freight
-- from  orders
-- where orderdate = '1996-05-21'

-- Create a report showing FirstName, LastName, Country from the employees not from United States.

-- select firstname,
-- lastname,
-- country
-- from employees
-- where country <> ('USA')

Create a report that shows the EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate from all orders shipped later
than the required date

-- select employeeid,
-- orderid,
-- customerid,
-- requireddate,
-- shippeddate
-- from orders
-- where shippeddate > requireddate 

Create a report that shows the City, CompanyName, ContactName of customers from cities starting with A or B.

-- select city, companyname, contactname
-- from customers
-- where city like 'A%' or 'B%'

Create a report showing all the even numbers of OrderID from the orders table.

-- select orderid
-- from orders
-- where orderid % 2 = 0

Create a report that shows all the orders where the freight cost more than $500.

-- SELECT *
-- FROM orders
-- WHERE Freight > 500.0;

Create a report that shows the ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel of all products that are up for 
reorder

-- select productname,
-- unitsinstock,
-- unitsonorder,
-- reorderlevel
-- from products
-- where unitsonorder <= reorderlevel

Create a report that shows the CompanyName, ContactName number of all customer that have no fax number.

-- select companyname,
-- contactname
-- from customers
-- where fax is  null

Create a report that shows the FirstName, LastName of all employees that do not report to anybody

-- select firstname,
-- lastname
-- from employees
-- where reportsto is null

Create a report showing all the odd numbers of OrderID from the orders table

-- select *
-- from orders
-- where orderid % 2 = 1

Create a report that shows the CompanyName, ContactName, Fax of all customers that do not have Fax number and sorted 
by ContactName

-- select Companyname,
-- Contactname
--  from customers
--  where fax is null
--  order by contactname

Create a report that shows the City, CompanyName, ContactName of customers from cities that has letter L in the name
sorted by ContactName.

-- select city, 
-- Companyname,
-- contactname
-- from customers
-- where city like ('%L%')
-- order by companyname

Create a report that shows the FirstName, LastName, BirthDate of employees born in the 1950s

-- select firstname,
-- lastname,
-- birthdate
--  from employees
--  where year(birthdate) = 1950

Create a report that shows the FirstName, LastName, the year of Birthdate as birth year from the employees table.

-- select firstname,
-- lastname,
-- year(birthdate) as Birth_Year
--  from employees

Create a report showing OrderID, total number of Order ID as NumberofOrders from the orderdetails table grouped by 
OrderID and sorted by NumberofOrders in descending order

-- select orderid,
-- count(orderid) as Numberoforders
--  from `order details`
--  group by orderid
-- order by numberoforders desc

Create a report that shows the SupplierID, ProductName, CompanyName from all product Supplied by Exotic Liquids,
Specialty Biscuits, Ltd., Escargots Nouveaux sorted by the supplier ID

-- select s.supplierid,
-- productname,
-- companyname
-- from suppliers s
-- join products as p on p.supplierid = s.supplierid
-- where companyname in ( 'Exotic Liquids', 'Specialty Biscuits, Ltd', 'Escargots Nouveaux')
-- order by 1

Create a report that shows the ShipPostalCode, OrderID, OrderDate, RequiredDate, ShippedDate, ShipAddress of all orders 
with ShipPostalCode beginning with "98124"

-- select shippostalcode,
-- orderid,
-- orderdate,
-- requireddate,
-- shippeddate,
-- shipaddress
--  from orders
--  where shippostalcode like '98124%'

Create a report that shows the ContactName, ContactTitle, CompanyName of customers that the has no "Sales" in their
ContactTitle

-- select contactname,
-- contacttitle,
-- companyname
--  from customers
--  where contacttitle not like '%Sales%'

Create a report that shows the LastName, FirstName, City of employees in cities other "Seattle";

-- select lastname,
-- firstname,
-- city
--  from employees
--  where city <> 'Seattle'

Create a report that shows the CompanyName, ContactTitle, City, Country of all customers in any city in Mexico or other 
cities in Spain other than Madrid.

-- select companyname,
-- ContactTitle,
-- city,
-- country
--  from customers
--  where (country = 'Mexico') or (Country = 'Spain' and city <> 'Madrid')

Create a report that shows the ContactName of all customers that do not have letter A as the second alphabet in their 
Contactname

-- select contactname
-- from customers
-- where substring(contactname ,2 ,1) <> 'A'

Create a report that shows the average UnitPrice rounded to the next whole number, total price of UnitsInStock and 
maximum number of orders from the products table. All saved as AveragePrice, TotalStock and MaxOrder respectively.

-- select round(avg(unitprice),2) as Avereageprice,
-- sum(unitprice*unitsinstock) as TotalPrice,
-- max(unitsonorder) as Maxorder
--  from products

Create a report that shows the SupplierID, CompanyName, CategoryName, ProductName and UnitPrice from the products, 
suppliers and categories table

-- select 
-- s.supplierid,
-- companyname,
-- c.categoryname,
-- p.productname,
-- unitprice
-- from products as p
-- join categories as c on c.categoryid = p.categoryid
-- join suppliers as s on s.supplierid = p.supplierid

	Create a report that shows the CustomerID, sum of Freight, from the orders table with sum of freight greater $200, grouped 
	by CustomerID

-- select customerid,
-- sum(freight) as Total_Freight
-- from orders
-- group by 1
-- having sum(freight) > 200

Create a report that shows the OrderID ContactName, UnitPrice, Quantity, Discount from the order details, orders and 
customers table with discount given on every purchase

select * from `order details`
select * from customers
select * from orders


-- select o.orderid,
-- c.contactname,
-- unitprice,
-- discount
-- from `order details` as o
-- join orders as od on od.orderid = o.orderid
-- join customers as c on c.customerid = od.customerid

Create a report that shows the EmployeeID, the LastName and FirstName as employee, and the LastName and FirstName of 
who they report to as manager from the employees table sorted by Employee

-- SELECT
--     E1.EmployeeID,
--     CONCAT(E1.LastName, ', ', E1.FirstName) AS Employee,
--     CONCAT(E2.LastName, ', ', E2.FirstName) AS Manager
-- FROM employees AS E1
-- LEFT JOIN employees AS E2 ON E1.ReportsTo = E2.EmployeeID
-- ORDER BY E1.EmployeeID;

Create a report that shows the average, minimum and maximum UnitPrice of all products as AveragePrice, MinimumPrice 
and MaximumPrice respectively

-- select
--  avg(unitprice),
-- min(unitprice),
-- max(unitprice)
-- from products

 Create a view named CustomerInfo that shows the CustomerID, CompanyName, ContactName, ContactTitle, Address, City, 
Country, Phone, OrderDate, RequiredDate, ShippedDate from the customers and orders table. HINT: Create a View.

-- create view customerinfo as
-- select c.customerid,
-- companyname,
-- contactname,
-- contacttitle,
-- address,
-- country,
-- phone,
-- orderdate
-- requireddate,
-- shippeddate
--  from customers as c
--  join orders as od on od.customerid = c.customerid
--  
--  select * from customerinfo

Create a view named ProductDetails that shows the ProductID, CompanyName, ProductName, CategoryName, Description, 
QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued from the supplier, products and 
categories tables. HINT: Create a View

-- create view ProductDetails as
-- select p.productid,
-- companyname,
-- productname,
-- CategoryName,
-- Description,
-- quantityperunit,
-- unitprice,
-- unitsinstock,
-- UnitsOnOrder
-- from products as p
-- join suppliers as s on s.supplierid = p.supplierid
-- join categories as c on c.categoryid = p.categoryid

-- select * from productdetails

-- Create a report that fetch the first 5 character of categoryName from the category tables and renamed as ShortInfo

-- select left(categoryname, 5) as ShortInfo
-- from categories

-- Create a copy of the shipper table as shippers_duplicate. Then insert a copy of shippers data into the new table HINT: Create 
-- a Table, use the LIKE Statement and INSERT INTO statement. 

create table Shippers_duplicate as
select *
from shippers
where 1 = 0

insert into shippers_duplicate
select *
from shippers

-- select * from shippers_Duplicate

Create a report that shows the CompanyName and ProductName from all product in the Seafood category.


-- select companyname,
-- p.productname
-- from products as p
-- join suppliers as s on s.supplierid = p.supplierid
-- join categories as c on c.categoryid = p.categoryid
-- where categoryname = 'seafood'

Create a report that shows the CategoryID, CompanyName and ProductName from all product in the categoryID 5.


-- select c.categoryid,
-- companyname,
-- productname
-- from suppliers as s
-- join products as p on p.supplierid = s.supplierid
-- join categories as c on c.categoryid = p.categoryid
-- where c.categoryid = 5

-- SELECT
--     LastName,
--     FirstName,
--     Title,
--     YEAR(CURDATE()) - YEAR(BirthDate) - (DATE_FORMAT(CURDATE(), '%m%d') < DATE_FORMAT(BirthDate, '%m%d')) AS Age
-- FROM
--     employees;

-- Create a report that the CompanyName and total number of orders by customer renamed as number of orders since 
-- Decemeber 31, 1994. Show number of Orders greater than 1

select * from orders
select * from customers

-- select c.companyname,
-- count(orderid) as  Number_of_orders
-- from customers as c
-- join orders as od on od.customerid = c.customerid
-- where orderdate >= '1994-12-31'
-- group by 1
-- having count(orderid) > 10 
