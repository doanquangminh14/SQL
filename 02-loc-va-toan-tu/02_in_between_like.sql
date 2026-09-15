-- =============================================
-- Module 02: IN, BETWEEN & LIKE
-- =============================================

-- 1. Toán tử IN: Kiểm tra giá trị nằm trong danh sách
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id IN (1, 3, 5, 7);

-- Phủ định: NOT IN
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id NOT IN (1, 3);

-- 2. Toán tử BETWEEN: Trong khoảng [a, b] (bao gồm cả 2 đầu mút)
SELECT employee_id, first_name, salary
FROM employees
WHERE salary BETWEEN 30000 AND 60000;

-- 3. Toán tử LIKE (Pattern Matching)
-- % đại diện cho 0 hoặc nhiều ký tự
-- _ đại diện cho đúng 1 ký tự

-- Bắt đầu bằng 'John'
SELECT * FROM customers WHERE first_name LIKE 'John%';

-- Kết thúc bằng 'son'
SELECT * FROM customers WHERE last_name LIKE '%son';

-- Chứa chữ 'an' ở bất kỳ đâu
SELECT * FROM customers WHERE first_name LIKE '%an%';

-- Tên có đúng 4 ký tự và bắt đầu bằng chữ 'A'
SELECT * FROM customers WHERE first_name LIKE 'A___';
