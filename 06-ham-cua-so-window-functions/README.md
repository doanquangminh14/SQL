# Module 06: Hàm Cửa Sổ (Window Functions - Analytic SQL)

## 🎯 Mục Tiêu
- Hiểu mệnh đề `OVER (PARTITION BY ... ORDER BY ...)`
- Sự khác biệt giữa Window Functions và `GROUP BY` (Window Function không làm gộp dòng)
- Các hàm xếp hạng: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `NTILE()`
- Các hàm truy xuất giá trị lân cận: `LAG()`, `LEAD()`, `FIRST_VALUE()`, `LAST_VALUE()`
- Các hàm tổng hợp tích lũy (Running Total, Moving Average) với `SUM() OVER (...)`

---

## 📝 Danh Sách File Thực Hành
- [`01_ranking_functions.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/06-ham-cua-so-window-functions/01_ranking_functions.sql): Xếp hạng nhân viên / sản phẩm theo từng nhóm (Top N per category).
- [`02_value_window_functions.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/06-ham-cua-so-window-functions/02_value_window_functions.sql): So sánh doanh thu tháng này với tháng trước (Month-over-Month).
- [`03_aggregate_window_functions.sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/06-ham-cua-so-window-functions/03_aggregate_window_functions.sql): Tính tổng doanh thu tích luỹ (Running Total).

---

## 📌 Bài Tập Tự Luyện
1. Lấy ra top 3 nhân viên có mức lương cao nhất trong từng phòng ban.
2. Tính tỷ lệ phần trăm mức lương của mỗi nhân viên so với tổng quỹ lương của phòng ban đó.
3. Tính mức tăng trưởng doanh thu theo từng tháng so với tháng liền kề trước đó (MoM Growth Rate).
