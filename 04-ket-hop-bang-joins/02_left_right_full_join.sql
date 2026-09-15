-- =============================================
-- Module 04: LEFT JOIN, RIGHT JOIN & FULL JOIN
-- =============================================

-- 1. LEFT JOIN: Lấy toàn bộ nhân viên, nếu không có phòng ban thì department_name là NULL
SELECT 
    e.employee_id,
    e.first_name,
    d.department_name
FROM employees e
LEFT JOIN departments d 
    ON e.department_id = d.department_id;

-- 2. Tìm các bản ghi không có liên kết (Left Anti Join)
-- Ví dụ: Tìm phòng ban chưa có bất kỳ nhân viên nào
SELECT 
    d.department_id,
    d.department_name
FROM departments d
LEFT JOIN employees e 
    ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;

-- 3. RIGHT JOIN: Lấy tất cả phòng ban, dù có nhân viên hay không (tương đương đảo vị trí LEFT JOIN)
SELECT 
    e.first_name,
    d.department_name
FROM employees e
RIGHT JOIN departments d 
    ON e.department_id = d.department_id;

-- 4. FULL OUTER JOIN: Lấy tất cả từ 2 phía
-- (Lưu ý: MySQL không hỗ trợ trực tiếp FULL JOIN, dùng UNION giữa LEFT và RIGHT JOIN)
SELECT 
    e.first_name,
    d.department_name
FROM employees e
FULL OUTER JOIN departments d 
    ON e.department_id = d.department_id;
