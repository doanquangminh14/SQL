-- =============================================
-- Module 04: UNION & UNION ALL (Phép Gộp Tập Hợp)
-- =============================================

-- Quy tắc khi dùng UNION/UNION ALL:
-- 1. Số lượng cột ở các câu SELECT phải bằng nhau.
-- 2. Kiểu dữ liệu của các cột tương ứng phải tương thích.

-- 1. UNION: Gộp kết quả và TỰ ĐỘNG LOẠI BỎ các dòng trùng lặp
SELECT city, country FROM customers
UNION
SELECT city, country FROM suppliers
ORDER BY country, city;

-- 2. UNION ALL: Gộp kết quả và GIỮ NGUYÊN các dòng trùng lặp (Nhanh hơn UNION rất nhiều)
SELECT employee_id, first_name, 'Full-time' AS job_type FROM permanent_employees
UNION ALL
SELECT contractor_id, contractor_name, 'Contractor' AS job_type FROM contract_workers;
