-- =============================================
-- Module 06: Các Hàm Xếp Hạng (Ranking Functions)
-- =============================================

-- So sánh ROW_NUMBER vs RANK vs DENSE_RANK:
-- ROW_NUMBER(): Đánh số liên tục 1, 2, 3, 4 (dù lương bằng nhau)
-- RANK(): Bằng điểm cùng rank, nhưng nhảy số (1, 2, 2, 4)
-- DENSE_RANK(): Bằng điểm cùng rank, không nhảy số (1, 2, 2, 3)

SELECT 
    employee_id,
    first_name,
    department_id,
    salary,
    ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS row_num,
    RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank_num,
    DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS dense_rank_num
FROM employees;

-- Ứng dụng kinh điển: Tìm Top 2 nhân viên lương cao nhất mỗi phòng ban
WITH RankedEmployees AS (
    SELECT 
        employee_id,
        first_name,
        department_id,
        salary,
        DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
    FROM employees
)
SELECT department_id, employee_id, first_name, salary, rnk
FROM RankedEmployees
WHERE rnk <= 2;
