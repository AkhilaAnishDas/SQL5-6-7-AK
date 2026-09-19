-- ============================================================
-- ASSIGNMENT 6: PART B — GROUPING & AGGREGATE FUNCTIONS
-- NAME: AKHILA ANISH DAS
-- ROLL NO: 150096725016
-- ============================================================


-- Q1. Find the total quantity ordered for each product_id.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT product_id,
    SUM(quantity) AS total_quantity
FROM orders
GROUP BY product_id;


-- Q2. Find the number of orders placed by each customer_id,
-- showing only customers who have placed more than 1 order.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT customer_id,
    COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- Q3. Calculate total revenue generated per product category.
-- Revenue = price × quantity.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT p.category,
       SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category;


-- Q4. Find the average product price for each category,
-- ordered from highest to lowest average price.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT category,
    AVG(price) AS average_price
FROM products
GROUP BY category
ORDER BY average_price DESC;


-- Q5. Identify the customer_id(s) who placed
-- the maximum number of orders.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT customer_id,
    COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) = (
    SELECT MAX(order_count)
    FROM (
        SELECT customer_id,
            COUNT(*) AS order_count
        FROM orders
        GROUP BY customer_id
    ) AS counts
);


-- Q6. Extract the month from order_date and find
-- the total quantity ordered in each month.

-- Name: AKHILA ANISH DAS, Roll No: 150096725016

SELECT EXTRACT(MONTH FROM order_date) AS month,
    SUM(quantity) AS total_quantity
FROM orders
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY month;