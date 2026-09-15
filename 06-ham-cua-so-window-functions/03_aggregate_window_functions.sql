-- =============================================
-- Module 06: Tính Tổng Tích Luỹ & Thống Kê (Window Aggregates)
-- =============================================

-- 1. Tính tổng tích luỹ (Running Total) theo thời gian
SELECT 
    order_id,
    order_date,
    amount,
    SUM(amount) OVER (
        ORDER BY order_date 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total_revenue
FROM orders;

-- 2. Tính tỷ lệ % mức lương của nhân viên so với tổng lương phòng ban
SELECT 
    employee_id,
    first_name,
    department_id,
    salary,
    SUM(salary) OVER (PARTITION BY department_id) AS dept_total_salary,
    ROUND(salary * 100.0 / SUM(salary) OVER (PARTITION BY department_id), 2) AS pct_of_dept_salary
FROM employees;

-- 3. Tính trung bình trượt (Moving Average) 3 kỳ
SELECT 
    sale_date,
    daily_sales,
    AVG(daily_sales) OVER (
        ORDER BY sale_date 
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_avg_3_days
FROM daily_sales_records;
