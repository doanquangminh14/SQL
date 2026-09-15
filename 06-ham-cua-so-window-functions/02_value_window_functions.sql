-- =============================================
-- Module 06: Các Hàm Giá Trị (LAG & LEAD)
-- =============================================

-- Giả sử ta có bảng monthly_sales (sale_month, revenue)

-- 1. Sử dụng LAG để lấy doanh thu của tháng trước đó
SELECT 
    sale_month,
    revenue,
    LAG(revenue, 1) OVER (ORDER BY sale_month) AS prev_month_revenue,
    -- Tính chênh lệch doanh thu so với tháng trước
    revenue - LAG(revenue, 1) OVER (ORDER BY sale_month) AS mom_diff
FROM monthly_sales;

-- 2. Sử dụng LEAD để lấy doanh thu của tháng kế tiếp
SELECT 
    sale_month,
    revenue,
    LEAD(revenue, 1) OVER (ORDER BY sale_month) AS next_month_revenue
FROM monthly_sales;

-- 3. FIRST_VALUE & LAST_VALUE
SELECT 
    employee_id,
    department_id,
    salary,
    FIRST_VALUE(salary) OVER (
        PARTITION BY department_id 
        ORDER BY salary DESC
    ) AS highest_salary_in_dept
FROM employees;
