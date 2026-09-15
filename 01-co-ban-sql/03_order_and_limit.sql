-- =============================================
-- Module 01: Sắp Xếp (ORDER BY) & Giới Hạn (LIMIT / TOP)
-- =============================================

-- 1. Sắp xếp tăng dần (ASC - mặc định)
SELECT employee_id, first_name, salary
FROM employees
ORDER BY salary ASC;

-- 2. Sắp xếp giảm dần (DESC)
SELECT employee_id, first_name, salary
FROM employees
ORDER BY salary DESC;

-- 3. Sắp xếp theo nhiều cột
SELECT department_id, salary, first_name
FROM employees
ORDER BY department_id ASC, salary DESC;

-- 4. Giới hạn số dòng kết quả (MySQL/PostgreSQL: LIMIT)
-- Lấy top 5 nhân viên có lương cao nhất
SELECT employee_id, first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- 5. Phân trang cơ bản: LIMIT và OFFSET
-- Lấy 5 nhân viên tiếp theo (trang 2)
SELECT employee_id, first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5 OFFSET 5;
