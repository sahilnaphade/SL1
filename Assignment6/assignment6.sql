--											ASSIGNMENT 6
--1. Get the total no of customers.
select count(*) as 'Total Customers' from customer; 

--2. Display average purchase amount of all the customers.
select cust_id,avg(total_cost) from orders group by cust_id;

--3. Display total purchase amount of all the customers
select cust_id,sum(total_cost) from orders group by cust_id;		--as per customer
select sum(total_cost) from orders;		--total cost

--4. Find DAYNAME, MONTHNAME and YEAR of the purchase order made on “1995-11-2016”
select dayname(date_of_order) as 'Day',monthname(date_of_order) as 'Month', year(date_of_order) as 'Year' from orders where date_of_order = '2019-07-18';

--5. Get current date & time, current time, current date
select curdate() as 'Current date',current_time as 'Current time',sysdate();

--6. Get 6 month future & past date using interval function based on current date and name the column accordingly.
select sysdate() + INTERVAL 6 month as 'Back to Future 6 months',sysdate() - INTERVAL 6 month as 'To the past, 6 month';

--!!!!!!		DOUBT 		!!!!!!!
--Find purchase details of the customers group by product category.
select order_id, cust_id, total_cost,c.cat_id,c.cat_name from orders o, food_item p, category c where o.item_id = p.item_id and p.cat_id = c.cat_id group by cat_id,order_id,cust_id;
