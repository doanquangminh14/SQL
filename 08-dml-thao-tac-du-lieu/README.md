# Module 08: Thao Tác Dữ Liệu & Giao Dịch (DML & Transactions)

## 🎯 Mục Tiêu
- Thêm dữ liệu đơn dòng và đa dòng với `INSERT INTO`
- Cập nhật dữ liệu an toàn với `UPDATE`
- Xoá dữ liệu có chọn lọc với `DELETE`
- Hiểu tính chất ACID và quản lý giao dịch với `BEGIN TRANSACTION`, `COMMIT`, `ROLLBACK`

---

## 📝 Danh Sách File Thực Hành
- [`01_insert_update_delete.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/08-dml-thao-tac-du-lieu/01_insert_update_delete.sql): Thao tác thêm, sửa, xoá dữ liệu và các lỗi thường gặp (quên mệnh đề WHERE).
- [`02_transactions_acid.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/08-dml-thao-tac-du-lieu/02_transactions_acid.sql): Xử lý chuyển tiền giữa 2 tài khoản ngân hàng bằng Transaction.

---

## 📌 Bài Tập Tự Luyện
1. Viết câu lệnh thêm 3 nhân viên mới cùng lúc vào bảng `employees`.
2. Tăng 10% lương cho tất cả nhân viên thuộc phòng ban IT (phòng ban ID = 6).
3. Viết giao dịch mô phỏng việc trừ tiền tài khoản A và cộng tiền tài khoản B, rollback nếu có lỗi.
