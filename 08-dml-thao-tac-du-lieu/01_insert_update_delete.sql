-- =============================================
-- Module 08: INSERT, UPDATE, DELETE
-- =============================================

-- 1. Thêm 1 dòng mới
INSERT INTO employees (employee_id, first_name, last_name, email, salary, department_id)
VALUES (101, 'Nguyen', 'An', 'nguyenan@example.com', 45000, 1);

-- 2. Thêm nhiều dòng cùng lúc (Batch Insert)
INSERT INTO employees (employee_id, first_name, last_name, email, salary, department_id)
VALUES 
    (102, 'Tran', 'Binh', 'tranbinh@example.com', 52000, 2),
    (103, 'Le', 'Cuong', 'lecuong@example.com', 48000, 1);

-- 3. INSERT từ kết quả SELECT
-- INSERT INTO employees_archive SELECT * FROM employees WHERE status = 'RESIGNED';

-- 4. CẬP NHẬT (UPDATE) - LUÔN KIỂM TRA MỆNH ĐỀ WHERE
UPDATE employees
SET salary = salary * 1.10,
    status = 'ACTIVE'
WHERE department_id = 1;

-- 5. XOÁ (DELETE) - LUÔN KIỂM TRA MỆNH ĐỀ WHERE
DELETE FROM employees
WHERE employee_id = 103;
