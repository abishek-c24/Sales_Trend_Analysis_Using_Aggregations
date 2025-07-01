CREATE DATABASE online_sales;

USE online_sales;

CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-05', 120.50, 101),
(2, '2023-01-12', 250.00, 102),
(3, '2023-01-25', 180.75, 103),
(4, '2023-02-03', 300.00, 104),
(5, '2023-02-15', 90.00, 105),
(6, '2023-02-28', 210.25, 106),
(7, '2023-03-07', 150.00, 107),
(8, '2023-03-20', 275.50, 108),
(9, '2023-04-11', 325.00, 109),
(10, '2023-04-18', 400.75, 110),
(11, '2023-05-02', 500.00, 111),
(12, '2023-05-15', 275.00, 112),
(13, '2023-06-05', 180.00, 113),
(14, '2023-06-19', 220.50, 114),
(15, '2023-07-01', 340.00, 115),
(16, '2023-07-22', 410.75, 116),
(17, '2023-08-08', 150.25, 117),
(18, '2023-08-17', 275.00, 118),
(19, '2023-09-03', 500.00, 119),
(20, '2023-09-25', 625.50, 120);

# a. Use EXTRACT(MONTH FROM order_date) for month
SELECT EXTRACT(MONTH FROM order_date) AS month 
FROM online_sales;

# b. GROUP BY year/month
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month
FROM online_sales
GROUP BY year, month;

# c. Use SUM() for revenue
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month;

# d. COUNT(DISTINCT order_id) for volume
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month;

# e. Use ORDER BY for sorting
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year ASC, month ASC;

# f. Limit results for specific time periods
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
WHERE YEAR(order_date) = 2023 AND MONTH(order_date) BETWEEN 1 AND 6
GROUP BY year, month
ORDER BY year, month;
