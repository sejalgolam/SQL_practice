use sales;

select * from sales;
select * from products;


-- 1.Count Sales Per Day from the Sales table--

select sale_date,count(sale_date) as sales_count
from sales
group by sale_date
order by sale_date;

-- 2.Retrieve product_name and unit_price from the Products table with the Highest Unit Price--

select  product_name, unit_price
from products
order by unit_price desc
limit 1;
-- where product_name = 'Laptop'--

-- 3.Retrieve the sale_id, product_id, and total_price from the Sales table for sales with a quantity_sold greater than 4.--

select sale_id, product_id, total_price
from sales
where quantity_sold >4;

-- 4.Retrieve the product_name and unit_price from the Products table, ordering the results by unit_price in descending order.--

select product_name, unit_price
from products
order by unit_price desc ;

-- 5.Retrieve the total_price of all sales, rounding the values to two decimal places.

select round(sum(total_price),2)
from sales;

-- 6.Calculate the average total_price of sales in the Sales table.

select avg(total_price)
from sales;

-- 7.Retrieve the sale_id and sale_date from the Sales table, formatting the sale_date as 'YYYY-MM-DD'.

select sale_id, date_format(sale_date,'%Y-%M-%D') AS_date
from sales;

-- 8.Calculate the total revenue generated from sales of products in the 'Electronics' category.

select sum(sales.total_price)
from sales
join products on sales.product_id = products.product_id
where products.category ='Electronics';


-- 9.Retrieve the product_name and unit_price from the Products table, filtering the unit_price to show only values between $20 and $600.

select product_name, unit_price
from products
where unit_price between  20 and 600;


-- 10.Retrieve the product_name and category from the Products table, ordering the results by category in ascending order.

select product_name, category
from products
order by category asc;



