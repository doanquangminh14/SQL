-- =============================================
-- Module 03: Hàm Tổng Hợp (Aggregate Functions)
-- =============================================

-- 1. Đếm số dòng / bản ghi
SELECT COUNT(*) AS tong_so_nhan_vien
FROM employees;

-- 2. Đếm số giá trị không NULL
SELECT COUNT(manager_id) AS so_nhan_vien_co_quan_ly
FROM employees;

-- 3. Đếm số giá trị phân biệt
SELECT COUNT(DISTINCT department_id) AS so_luong_phong_ban
FROM employees;

-- 4. Tính tổng, trung bình, nhỏ nhất, lớn nhất
SELECT 
    SUM(salary) AS tong_quy_luong,
    AVG(salary) AS luong_trung_binh,
    MIN(salary) AS luong_thap_nhat,
    MAX(salary) AS luong_cao_nhat
FROM employees;
