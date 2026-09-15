-- =============================================
-- Module 05: Truy Vấn Con (Subqueries)
-- =============================================

-- 1. Scalar Subquery trong WHERE (Trả về đúng 1 giá trị)
-- Tìm nhân viên có lương cao hơn mức trung bình công ty
SELECT employee_id, first_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 2. Subquery với IN (Trả về danh sách nhiều dòng)
-- Tìm nhân viên làm việc tại các phòng ban ở London
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id IN (
    SELECT department_id 
    FROM departments 
    WHERE location_id = 2400
);

-- 3. Correlated Subquery với EXISTS / NOT EXISTS
-- Tìm các phòng ban có ít nhất 1 nhân viên
SELECT d.department_id, d.department_name
FROM departments d
WHERE EXISTS (
    SELECT 1 
    FROM employees e 
    WHERE e.department_id = d.department_id
);

-- 4. Derived Table (Subquery trong mệnh đề FROM)
SELECT dept_stats.department_id, dept_stats.avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_stats
WHERE dept_stats.avg_salary > 50000;
