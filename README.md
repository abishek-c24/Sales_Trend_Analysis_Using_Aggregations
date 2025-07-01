# 📊 Sales Trend Analysis Using Aggregations

This project analyzes monthly revenue and order volume from an **online_sales** dataset using SQL.

---

## ✅ Objective

Analyze sales data to understand monthly revenue and order volume trends over time. This helps businesses monitor performance, identify seasonal patterns, and make informed decisions.

---

## ✅ Summary

This project demonstrates how to:

- Extract and group sales data by year and month.
- Calculate monthly total revenue.
- Count the number of unique orders per month.
- Sort and filter results for specific time periods.

By applying these steps, analysts can uncover time-based sales trends to support better planning and forecasting.

---

## ✅ Dataset

**Dataset:** `online_sales`  
*(orders table with `order_date`, `amount`, `product_id`)*

| Column     | Type    | Description                       |
|------------|---------|-----------------------------------|
| order_id   | INT     | Unique identifier for each order  |
| order_date | DATE    | Date of the order                 |
| amount     | DECIMAL | Revenue amount for the order      |
| product_id | INT     | Product identifier                |

---

## ✅ What To Do 

- a. Use `EXTRACT(MONTH FROM order_date)` for month.
- b. `GROUP BY` year/month.
- c. Use `SUM()` for revenue.
- d. `COUNT(DISTINCT order_id)` for volume.
- e. Use `ORDER BY` for sorting.
- f. Limit results for specific time periods.

---

## ✅ Outcome

- Learn how to group data by time periods.
- Perform aggregations to calculate revenue and order volume.
- Analyze trends to support business decisions.

---

## 📜 License

This project is under the MIT License.
