-- =============================================
-- Module 07: Các Ràng Buộc (Constraints)
-- =============================================

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,     -- UNIQUE: Không trùng lặp
    salary DECIMAL(10, 2) CHECK (salary > 0), -- CHECK: Điều kiện hợp lệ
    status VARCHAR(20) DEFAULT 'ACTIVE',    -- DEFAULT: Giá trị mặc định
    department_id INT,
    
    -- FOREIGN KEY: Ràng buộc khoá ngoại tham chiếu đến bảng departments
    CONSTRAINT fk_employees_departments 
        FOREIGN KEY (department_id) 
        REFERENCES departments(department_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
