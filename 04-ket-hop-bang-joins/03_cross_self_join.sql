-- =============================================
-- Module 04: SELF JOIN & CROSS JOIN
-- =============================================

-- 1. SELF JOIN: Bảng tự kết hợp với chính nó
-- Ví dụ kinh điển: Tìm tên nhân viên và tên người quản lý trực tiếp
SELECT 
    e.first_name AS employee_name,
    m.first_name AS manager_name
FROM employees e
LEFT JOIN employees m 
    ON e.manager_id = m.employee_id;

-- 2. CROSS JOIN: Tích Descartes (Mỗi dòng bảng A kết hợp với mọi dòng bảng B)
-- Thường dùng để tạo lịch, ma trận báo cáo đầy đủ
SELECT 
    p.product_name,
    s.store_name
FROM products p
CROSS JOIN stores s;
