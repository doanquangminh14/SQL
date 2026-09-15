-- =============================================
-- Module 03: Hàm Xử Lý Chuỗi, Số, Thời Gian & CASE WHEN
-- =============================================

-- 1. Hàm chuỗi (String Functions)
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    UPPER(first_name) AS ten_in_hoa,
    LOWER(email) AS email_chuan_hoa,
    LENGTH(first_name) AS do_dai_ten,
    SUBSTRING(phone_number, 1, 3) AS ma_vung
FROM employees;

-- 2. Hàm số học (Numeric Functions)
SELECT 
    salary,
    ROUND(salary * 1.15, 2) AS luong_tang_lam_tron,
    FLOOR(salary * 1.15) AS luong_lam_tron_xuong,
    CEIL(salary * 1.15) AS luong_lam_tron_len
FROM employees;

-- 3. Hàm ngày tháng (Date/Time Functions)
SELECT 
    hire_date,
    EXTRACT(YEAR FROM hire_date) AS nam_vao_lam,
    CURRENT_DATE AS ngay_hien_tai
FROM employees;

-- 4. Biểu thức điều kiện CASE WHEN (Rất phổ biến trong phân tích)
SELECT 
    employee_id,
    first_name,
    salary,
    CASE 
        WHEN salary >= 70000 THEN 'Cao'
        WHEN salary >= 40000 THEN 'Trung bình'
        ELSE 'Thấp'
    END AS phan_khuc_luong
FROM employees;
