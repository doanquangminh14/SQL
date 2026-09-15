# Module 07: Ngôn Ngữ Định Nghĩa Dữ Liệu (DDL - Data Definition Language)

## 🎯 Mục Tiêu
- Khởi tạo bảng với các kiểu dữ liệu phổ biến (`INT`, `VARCHAR`, `DECIMAL`, `DATETIME`, `BOOLEAN`)
- Sửa đổi cấu trúc bảng với `ALTER TABLE` (thêm, sửa, xoá cột)
- Thiết lập các ràng buộc toàn vẹn dữ liệu: `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`, `CHECK`, `DEFAULT`
- Tạo và quản lý Index (Chỉ mục) để tăng tốc độ truy vấn

---

## 📝 Danh Sách File Thực Hành
- [`01_create_alter_drop_table.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/07-ddl-tao-va-quan-ly-bang/01_create_alter_drop_table.sql): Các thao tác tạo mới, sửa đổi và xoá bảng.
- [`02_constraints.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/07-ddl-tao-va-quan-ly-bang/02_constraints.sql): Toàn vẹn tham chiếu và kiểm tra tính hợp lệ.
- [`03_indexes.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/07-ddl-tao-va-quan-ly-bang/03_indexes.sql): Tạo B-Tree Index, Unique Index và Composite Index.

---

## 📌 Bài Tập Tự Luyện
1. Tạo bảng `customers` và bảng `orders` với khoá ngoại liên kết giữa 2 bảng.
2. Thêm ràng buộc `CHECK` đảm bảo số tiền đơn hàng `total_amount` phải lớn hơn 0.
3. Tạo index trên cột `email` của bảng `customers`.
