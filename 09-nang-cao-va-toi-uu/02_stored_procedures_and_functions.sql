-- =============================================
-- Module 09: Stored Procedures & Functions
-- =============================================

-- 1. Stored Procedure (Ví dụ chuẩn cú pháp MySQL/PostgreSQL/SQL Server)
-- MySQL Example:
DELIMITER //
CREATE PROCEDURE GetEmployeesByDept(IN p_dept_id INT)
BEGIN
    SELECT employee_id, first_name, last_name, salary
    FROM employees
    WHERE department_id = p_dept_id;
END //
DELIMITER ;

-- Gọi Procedure:
-- CALL GetEmployeesByDept(5);

-- 2. User-Defined Function (UDF): Tính thuế thu nhập
DELIMITER //
CREATE FUNCTION CalculateTax(salary DECIMAL(10, 2)) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE tax DECIMAL(10, 2);
    IF salary > 50000 THEN
        SET tax = salary * 0.15;
    ELSE
        SET tax = salary * 0.05;
    END IF;
    RETURN tax;
END //
DELIMITER ;

-- Sử dụng Function trong câu SELECT:
-- SELECT employee_id, salary, CalculateTax(salary) AS tax_amount FROM employees;
