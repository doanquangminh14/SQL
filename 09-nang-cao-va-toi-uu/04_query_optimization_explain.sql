-- =============================================
-- Module 09: Tối Ưu Hoá Truy Vấn & EXPLAIN
-- =============================================

-- 1. Xem Kế Hoạch Thực Thi (Execution Plan)
EXPLAIN 
SELECT * FROM employees WHERE email = 'john.doe@example.com';

-- 2. Quy tắc tối ưu quan trọng: SARGable Query (Search Argument Able)
-- KHÔNG NÊN (Làm vô hiệu hoá Index trên cột hire_date vì bọc hàm):
-- SELECT * FROM employees WHERE YEAR(hire_date) = 2023;

-- NÊN DÙNG (Giữ nguyên cột để Database tận dụng Index Range Scan):
SELECT * FROM employees 
WHERE hire_date >= '2023-01-01' AND hire_date < '2024-01-01';

-- 3. Hạn chế SELECT * trong ứng dụng sản xuất (Production)
-- Chỉ chọn đúng các cột cần thiết để giảm I/O và băng thông mạng.

-- 4. Sử dụng EXISTS thay cho COUNT(*) khi chỉ cần kiểm tra sự tồn tại
-- THAY VÌ: IF (SELECT COUNT(*) FROM orders WHERE user_id = 10) > 0
-- HÃY DÙNG: IF EXISTS (SELECT 1 FROM orders WHERE user_id = 10)
