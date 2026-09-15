-- =============================================
-- Module 03: Gom Nhóm & Lọc Nhóm (GROUP BY & HAVING)
-- =============================================

-- 1. Gom nhóm cơ bản theo 1 cột
SELECT 
    department_id,
    COUNT(*) AS so_nhan_vien,
    AVG(salary) AS luong_trung_binh,
    SUM(salary) AS tong_luong
FROM employees
GROUP BY department_id;

-- 2. Gom nhóm theo nhiều cột
SELECT 
    department_id,
    job_id,
    COUNT(*) AS so_nhan_vien,
    AVG(salary) AS luong_trung_binh
FROM employees
GROUP BY department_id, job_id;

-- 3. Lọc nhóm với HAVING
-- LƯU Ý: WHERE lọc từng dòng TRƯỚC khi group, HAVING lọc các nhóm SAU khi group.
SELECT 
    department_id,
    COUNT(*) AS so_nhan_vien,
    AVG(salary) AS luong_trung_binh
FROM employees
WHERE salary > 20000            -- Điều kiện lọc từng dòng
GROUP BY department_id
HAVING COUNT(*) >= 2            -- Điều kiện lọc trên nhóm
   AND AVG(salary) >= 40000
ORDER BY luong_trung_binh DESC;
