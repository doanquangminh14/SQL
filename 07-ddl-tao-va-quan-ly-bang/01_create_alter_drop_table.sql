-- =============================================
-- Module 07: CREATE, ALTER, DROP TABLE
-- =============================================

-- 1. Tạo bảng mới
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(150) NOT NULL,
    category_id INT,
    price DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    stock_quantity INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Thay đổi cấu trúc bảng (ALTER TABLE)
-- Thêm cột mới
ALTER TABLE products 
ADD COLUMN description TEXT;

-- Sửa kiểu dữ liệu cột
ALTER TABLE products 
MODIFY COLUMN product_name VARCHAR(255) NOT NULL;

-- Đổi tên cột (Tuỳ RDBMS, ví dụ PostgreSQL: RENAME COLUMN, MySQL: RENAME COLUMN / CHANGE)
ALTER TABLE products 
RENAME COLUMN stock_quantity TO in_stock;

-- Xoá cột
ALTER TABLE products 
DROP COLUMN description;

-- 3. Xoá bảng
-- DROP TABLE products; -- Xoá hẳn bảng và dữ liệu
-- TRUNCATE TABLE products; -- Xoá sạch dữ liệu nhưng giữ lại khung bảng (rất nhanh)
