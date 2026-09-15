-- =============================================
-- Module 02: Toán Tử Logic (AND, OR, NOT)
-- =============================================

-- 1. Toán tử AND: Cả 2 điều kiện đều phải đúng
SELECT employee_id, first_name, department_id, salary
FROM employees
WHERE department_id = 5 AND salary >= 40000;

-- 2. Toán tử OR: Ít nhất 1 trong 2 điều kiện đúng
SELECT employee_id, first_name, department_id, salary
FROM employees
WHERE department_id = 5 OR department_id = 10;

-- 3. Kết hợp AND & OR (Lưu ý dấu ngoặc tròn để kiểm soát thứ tự ưu tiên)
-- Lấy nhân viên phòng 5 hoặc 10 nhưng phải có lương > 50,000
SELECT employee_id, first_name, department_id, salary
FROM employees
WHERE (department_id = 5 OR department_id = 10) 
  AND salary > 50000;

-- 4. Toán tử NOT: Phủ định điều kiện
SELECT employee_id, first_name, department_id
FROM employees
WHERE NOT (department_id = 1);
