use Sales;

-- Create Sales table

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_price DECIMAL(10, 2)
);

-- Insert sample data into Sales table

INSERT INTO Sales (sale_id, product_id, quantity_sold, sale_date, total_price) VALUES
(1, 101, 5, '2024-01-01', 2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);



CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2)
);

-- Insert sample data into Products table

INSERT INTO Products (product_id, product_name, category, unit_price) VALUES
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);


-- Q1. Retrieve all columns from the Sales table.-- 

Select * from sales;

-- Q2.Retrieve the product_name and unit_price from the Products table.--

Select * from products;
select product_name , unit_price from products ;
 
-- Q3.Retrieve the sale_id and sale_date from the Sales table.
 
 select sale_id, sale_date from sales;
 
-- Q4.Filter the Sales table to show only sales with a total_price greater than $100.--

select total_price from sales
where total_price >100;

-- Q5. Filter the Products table to show only products in the 'Electronics' category.--

select category from  products 
where category = 'Electronics';

-- Q6.Retrieve the sale_id and total_price from the Sales table for sales made on January 3, 2024.--

select sale_id,total_price from sales
where sale_date = '2024-01-03';

-- Q7.Retrieve the product_id and product_name from the Products table for products with a unit_price greater than $100.--

select product_id, product_name from products
where unit_price > 100;


-- Q8.Calculate the total revenue generated from all sales in the Sales table.--

select  SUM(total_price)
from sales;

-- Q9.Calculate the average unit_price of products in the Products table.--

SELECT ROUND(AVG(unit_price), 0)
FROM products;

-- Q10.Calculate the total quantity_sold from the Sales table.--

select  sum(quantity_sold)
from sales 





