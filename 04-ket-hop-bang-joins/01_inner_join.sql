-- =============================================
-- Module 04: INNER JOIN
-- =============================================

-- 1. INNER JOIN giữa 2 bảng
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name
FROM employees e
INNER JOIN departments d 
    ON e.department_id = d.department_id;

-- 2. INNER JOIN nhiều bảng (3 bảng trở lên)
SELECT 
    e.employee_id,
    e.first_name,
    d.department_name,
    l.city,
    l.country_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
INNER JOIN locations l ON d.location_id = l.location_id;

-- 3. INNER JOIN kết hợp GROUP BY
SELECT 
    d.department_name,
    COUNT(e.employee_id) AS total_employees,
    AVG(e.salary) AS avg_salary
FROM departments d
INNER JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY total_employees DESC;
