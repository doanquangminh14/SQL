-- =============================================
-- Module 09: Khung Nhìn (Views)
-- =============================================

-- 1. Tạo View xem thông tin chi tiết nhân viên kèm phòng ban
CREATE OR REPLACE VIEW vw_employee_details AS
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;

-- 2. Truy vấn từ View như một bảng bình thường
SELECT * 
FROM vw_employee_details
WHERE salary > 50000;

-- 3. Xoá View
-- DROP VIEW vw_employee_details;
