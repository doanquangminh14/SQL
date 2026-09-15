# Module 09: Đối Tượng Nâng Cao & Tối Ưu Truy Vấn (Advanced SQL & Optimization)

## 🎯 Mục Tiêu
- Tạo và sử dụng **Views** & **Materialized Views** để bảo mật và đơn giản hoá truy vấn
- Viết **Stored Procedures** và **User Defined Functions (UDF)**
- Lập trình **Triggers** tự động bắt sự kiện (Audit Log, Data Validation)
- Đọc hiểu Execution Plan (`EXPLAIN` / `EXPLAIN ANALYZE`) và các kỹ thuật tối ưu câu lệnh SQL

---

## 📝 Danh Sách File Thực Hành
- [`01_views.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/09-nang-cao-va-toi-uu/01_views.sql): Tạo View đóng gói câu lệnh JOIN phức tạp.
- [`02_stored_procedures_and_functions.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/09-nang-cao-va-toi-uu/02_stored_procedures_and_functions.sql): Thủ tục lưu trữ và hàm tự định nghĩa.
- [`03_triggers.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/09-nang-cao-va-toi-uu/03_triggers.sql): Trigger ghi log lịch sử thay đổi giá trị.
- [`04_query_optimization_explain.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/09-nang-cao-va-toi-uu/04_query_optimization_explain.sql): EXPLAIN, Index Scan vs Seq Scan, tránh `SELECT *`, SARGable queries.

---

## 📌 Bài Tập Tự Luyện
1. Tạo một view `vw_customer_order_summary` hiển thị mã khách hàng, tên khách hàng và tổng chi tiêu.
2. Viết một Stored Procedure nhận vào `department_id` và trả về danh sách nhân viên thuộc phòng ban đó.
3. Dùng `EXPLAIN` kiểm tra chi phí truy vấn trước và sau khi đánh index trên bảng dữ liệu lớn.
