-- =============================================
-- Module 01: Truy Vấn Cơ Bản (SELECT & ALIAS)
-- =============================================

-- 1. Lấy tất cả các cột từ bảng employees
SELECT * 
FROM employees;

-- 2. Chỉ chọn các cột cụ thể (khuyên dùng trong thực tế)
SELECT employee_id, first_name, last_name, salary
FROM employees;

-- 3. Đặt bí danh (Alias) cho cột và bảng
SELECT 
    first_name AS ten,
    last_name AS ho,
    salary AS muc_luong,
    salary * 12 AS thu_nhap_nam
FROM employees;

-- 4. Lấy các giá trị duy nhất (không trùng lặp)
SELECT DISTINCT department_id
FROM employees;
