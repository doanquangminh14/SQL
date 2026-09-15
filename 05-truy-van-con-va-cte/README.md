# Module 05: Truy Vấn Con (Subqueries) & Bảng Tạm CTE (Common Table Expressions)

## 🎯 Mục Tiêu
- Hiểu và áp dụng các loại Subquery:
  - Subquery đơn giá trị (Scalar Subquery) trong `SELECT` hoặc `WHERE`
  - Subquery trả về danh sách kết hợp với `IN`, `ANY`, `ALL`
  - Subquery liên kết (Correlated Subquery) kết hợp `EXISTS` / `NOT EXISTS`
  - Subquery trong mệnh đề `FROM` (Derived Tables)
- Sử dụng mệnh đề `WITH` (Common Table Expression - CTE) để viết truy vấn sạch, dễ đọc và bảo trì
- Giới thiệu CTE đệ quy (Recursive CTE) cho cấu trúc hình cây/phân cấp

---

## 📝 Danh Sách File Thực Hành
- [`01_subqueries.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/05-truy-van-con-va-cte/01_subqueries.sql): Các dạng subquery cơ bản và Correlated Subquery.
- [`02_cte_common_table_expressions.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/05-truy-van-con-va-cte/02_cte_common_table_expressions.sql): Cú pháp `WITH`, CTE lồng nhau và Recursive CTE.

---

## 📌 Bài Tập Tự Luyện
1. Tìm tất cả nhân viên có mức lương cao hơn mức lương trung bình của toàn công ty.
2. Tìm những nhân viên có mức lương cao hơn mức lương trung bình của chính phòng ban mà họ trực thuộc (sử dụng correlated subquery hoặc CTE).
3. Viết lại bài toán tìm khách hàng đã từng đặt hàng bằng cú pháp `EXISTS`.
