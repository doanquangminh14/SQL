-- =============================================
-- Module 05: Common Table Expressions (CTE - Mệnh đề WITH)
-- =============================================

-- 1. CTE Cơ Bản: Tách logic tính toán giúp câu query trong sáng hơn
WITH DepartmentSalaryStats AS (
    SELECT 
        department_id,
        COUNT(*) AS total_staff,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
)
SELECT 
    e.employee_id,
    e.first_name,
    e.salary,
    d.avg_salary,
    ROUND(e.salary - d.avg_salary, 2) AS diff_from_dept_avg
FROM employees e
INNER JOIN DepartmentSalaryStats d ON e.department_id = d.department_id;

-- 2. Nhiều CTE liên tiếp nhau
WITH HighSalaryEmployees AS (
    SELECT employee_id, first_name, department_id, salary
    FROM employees
    WHERE salary >= 60000
),
DepartmentSummary AS (
    SELECT department_id, COUNT(*) AS high_earners_count
    FROM HighSalaryEmployees
    GROUP BY department_id
)
SELECT d.department_name, s.high_earners_count
FROM DepartmentSummary s
INNER JOIN departments d ON s.department_id = d.department_id;

-- 3. Recursive CTE (Ví dụ: Tạo dãy số từ 1 đến 10)
WITH RECURSIVE NumbersSequence AS (
    SELECT 1 AS n              -- Anchor member
    UNION ALL
    SELECT n + 1               -- Recursive member
    FROM NumbersSequence
    WHERE n < 10               -- Termination condition
)
SELECT n FROM NumbersSequence;
