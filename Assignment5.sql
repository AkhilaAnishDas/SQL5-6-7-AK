-- ============================================================
-- ASSIGNMENT 5: PART A — QUERYING
-- NAME: AKHILA ANISH DAS
-- ROLL NO: 150096725016
-- ============================================================


-- Q1. List customer_name, city and country of customers in India,
-- sorted alphabetically by customer_name.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT customer_name, city, country
FROM customers
WHERE country = 'India'
ORDER BY customer_name;


-- Q2. Display all Electronics products with price greater than 10000,
-- sorted by price in descending order.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT *
FROM products
WHERE category = 'Electronics'
AND price > 10000
ORDER BY price DESC;


-- Q3. Find all orders placed in January 2024,
-- showing order_id, customer_id, product_id and order_date.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT order_id, customer_id, product_id, order_date
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-01-31';


-- Q4. List customer_name and country of customers
-- who are NOT based in India.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT customer_name, country
FROM customers
WHERE country <> 'India';


-- Q5. Find products whose product_name starts with 'L'
-- OR whose category is 'Stationery'.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT *
FROM products
WHERE product_name LIKE 'L%'
OR category = 'Stationery';


-- Q6. Display all orders where quantity is greater than 1,
-- sorted by order_date in ascending order.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT *
FROM orders
WHERE quantity > 1
ORDER BY order_date ASC;