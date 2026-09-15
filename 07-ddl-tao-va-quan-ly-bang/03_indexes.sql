-- =============================================
-- Module 07: Chỉ Mục (Indexes)
-- =============================================

-- 1. Tạo Single-Column Index (Tăng tốc tìm kiếm theo 1 cột)
CREATE INDEX idx_employees_email 
ON employees(email);

-- 2. Tạo Composite Index (Index trên nhiều cột, tuân theo nguyên tắc Left-Most Prefix)
CREATE INDEX idx_employees_dept_salary 
ON employees(department_id, salary);

-- 3. Tạo Unique Index (Đảm bảo tính duy nhất và tăng tốc tìm kiếm)
CREATE UNIQUE INDEX idx_employees_phone 
ON employees(phone_number);

-- 4. Xoá Index
-- DROP INDEX idx_employees_email ON employees; -- MySQL
-- DROP INDEX idx_employees_email;              -- PostgreSQL / SQL Server
