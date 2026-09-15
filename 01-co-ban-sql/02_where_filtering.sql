-- =============================================
-- Module 01: Lọc Dữ Liệu Với WHERE
-- =============================================

-- 1. Lọc theo so sánh bằng (=)
SELECT * 
FROM employees
WHERE department_id = 5;

-- 2. Lọc theo so sánh lớn hơn / nhỏ hơn (> , < , >= , <=)
SELECT employee_id, first_name, salary
FROM employees
WHERE salary > 50000;

-- 3. Lọc theo so sánh khác (!= hoặc <>)
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id <> 10;

-- 4. So sánh với chuỗi ký tự (phân biệt/không phân biệt tuỳ collation)
SELECT *
FROM customers
WHERE country = 'Vietnam';
