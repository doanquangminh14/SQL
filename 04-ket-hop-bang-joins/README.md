# Module 04: Kết Hợp Bảng (Joins & Set Operations)

## 🎯 Mục Tiêu
- Hiểu rõ bản chất quan hệ giữa các bảng (Primary Key - Foreign Key)
- Phân biệt các loại JOIN:
  - `INNER JOIN`: Chỉ lấy các dòng khớp điều kiện ở cả 2 bảng
  - `LEFT JOIN`: Lấy tất cả dòng từ bảng bên trái + dữ liệu khớp bên phải
  - `RIGHT JOIN`: Lấy tất cả dòng từ bảng bên phải + dữ liệu khớp bên trái
  - `FULL OUTER JOIN`: Lấy tất cả dòng từ cả 2 bảng
  - `CROSS JOIN`: Tích Descartes giữa 2 bảng
  - `SELF JOIN`: Bảng tự JOIN với chính nó (vd: tìm cấp trên - cấp dưới)
- Gộp tập kết quả bằng `UNION` vs `UNION ALL`

---

## 📝 Danh Sách File Thực Hành
- [`01_inner_join.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/04-ket-hop-bang-joins/01_inner_join.sql): Cú pháp và ví dụ INNER JOIN.
- [`02_left_right_full_join.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/04-ket-hop-bang-joins/02_left_right_full_join.sql): Outer Joins và cách tìm dữ liệu mồ côi (orphaned records).
- [`03_cross_self_join.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/04-ket-hop-bang-joins/03_cross_self_join.sql): Phân tích phân cấp và tạo bảng tổ hợp.
- [`04_union_union_all.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/04-ket-hop-bang-joins/04_union_union_all.sql): Gộp dòng kết quả từ nhiều câu lệnh SELECT.

---

## 📌 Bài Tập Tự Luyện
1. Lấy thông tin nhân viên kèm theo tên phòng ban của họ (những ai chưa có phòng ban thì bỏ qua).
2. Lấy tất cả khách hàng và số đơn hàng họ đã đặt (kể cả khách hàng chưa từng mua hàng).
3. Lấy tên nhân viên và tên của người quản lý trực tiếp của họ bằng `SELF JOIN`.
