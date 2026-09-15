-- =============================================
-- Module 02: Xử Lý Giá Trị Rỗng (NULL)
-- =============================================

-- LƯU Ý QUAN TRỌNG: Không thể so sánh '= NULL' hoặc '!= NULL'.
-- Phải dùng 'IS NULL' hoặc 'IS NOT NULL'.

-- 1. Tìm các bản ghi có giá trị rỗng
SELECT employee_id, first_name, manager_id
FROM employees
WHERE manager_id IS NULL;

-- 2. Tìm các bản ghi có giá trị (không rỗng)
SELECT employee_id, first_name, phone_number
FROM employees
WHERE phone_number IS NOT NULL;

-- 3. Hàm xử lý NULL: COALESCE / IFNULL / NVL
-- Thay thế giá trị NULL bằng một giá trị mặc định
-- COALESCE là hàm chuẩn ANSI SQL (chạy được trên mọi hệ CSDL)
SELECT 
    employee_id,
    first_name,
    COALESCE(phone_number, 'Chưa có số điện thoại') AS phone_display,
    COALESCE(commission_pct, 0.0) AS commission
FROM employees;
