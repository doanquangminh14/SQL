# Module 01: Cơ Bản Về SQL (SQL Fundamentals)

## 🎯 Mục Tiêu
- Nắm được cú pháp truy vấn cơ bản: `SELECT`, `FROM`
- Lọc dữ liệu cơ bản với `WHERE`
- Loại bỏ dữ liệu trùng lặp với `DISTINCT`
- Sắp xếp kết quả với `ORDER BY`
- Giới hạn số lượng bản ghi trả về với `LIMIT` (hoặc `TOP` trong SQL Server)

---

## 📖 Cú Pháp Chuẩn

```sql
SELECT DISTINCT column1, column2
FROM table_name
WHERE condition
ORDER BY column1 ASC|DESC
LIMIT count;
```

---

## 📝 Danh Sách File Thực Hành
- [`01_select_basic.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/01-co-ban-sql/01_select_basic.sql): Các lệnh SELECT cơ bản, alias, distinct.
- [`02_where_filtering.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/01-co-ban-sql/02_where_filtering.sql): Điều kiện so sánh số, chuỗi, boolean.
- [`03_order_and_limit.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/01-co-ban-sql/03_order_and_limit.sql): Sắp xếp tăng/giảm và phân trang cơ bản.

---

## 📌 Bài Tập Tự Luyện
1. Lấy ra danh sách tên (`first_name`, `last_name`) và email của tất cả khách hàng.
2. Lấy danh sách các thành phố không trùng lặp từ bảng `customers`.
3. Tìm 5 sản phẩm có giá cao nhất trong bảng `products`.
