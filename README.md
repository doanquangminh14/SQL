# 📚 Lộ Trình Học SQL Từ Cơ Bản Đến Nâng Cao (SQL Roadmap)

Chào mừng bạn đến với kho lưu trữ bài học và thực hành SQL! Kho lưu trữ này được thiết kế theo từng module rõ ràng từ cơ bản đến nâng cao, kèm mẫu code và bài tập.

---

## 🗺️ Mục Lục Lộ Trình

| STT | Module | Nội Dung Chính | Trạng Thái |
|:---:|:---|:---|:---:|
| **01** | [`01-co-ban-sql`](file:///c:/Users/Minh%20Doan/repo_github/SQL/01-co-ban-sql/README.md) | SELECT, WHERE, DISTINCT, ORDER BY, LIMIT / TOP | 🔲 Chưa học |
| **02** | [`02-loc-va-toan-tu`](file:///c:/Users/Minh%20Doan/repo_github/SQL/02-loc-va-toan-tu/README.md) | AND, OR, NOT, IN, BETWEEN, LIKE, IS NULL | 🔲 Chưa học |
| **03** | [`03-ham-va-tong-hop`](file:///c:/Users/Minh%20Doan/repo_github/SQL/03-ham-va-tong-hop/README.md) | COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING, Chuỗi & Ngày tháng | 🔲 Chưa học |
| **04** | [`04-ket-hop-bang-joins`](file:///c:/Users/Minh%20Doan/repo_github/SQL/04-ket-hop-bang-joins/README.md) | INNER JOIN, LEFT/RIGHT/FULL JOIN, CROSS/SELF JOIN, UNION | 🔲 Chưa học |
| **05** | [`05-truy-van-con-va-cte`](file:///c:/Users/Minh%20Doan/repo_github/SQL/05-truy-van-con-va-cte/README.md) | Subqueries (Single/Multiple/Correlated), CTE (WITH clause) | 🔲 Chưa học |
| **06** | [`06-ham-cua-so-window-functions`](file:///c:/Users/Minh%20Doan/repo_github/SQL/06-ham-cua-so-window-functions/README.md) | ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD, OVER (PARTITION BY) | 🔲 Chưa học |
| **07** | [`07-ddl-tao-va-quan-ly-bang`](file:///c:/Users/Minh%20Doan/repo_github/SQL/07-ddl-tao-va-quan-ly-bang/README.md) | CREATE, ALTER, DROP TABLE, Ràng buộc (PK, FK, Unique), Index | 🔲 Chưa học |
| **08** | [`08-dml-thao-tac-du-lieu`](file:///c:/Users/Minh%20Doan/repo_github/SQL/08-dml-thao-tac-du-lieu/README.md) | INSERT, UPDATE, DELETE, Transaction (COMMIT, ROLLBACK) | 🔲 Chưa học |
| **09** | [`09-nang-cao-va-toi-uu`](file:///c:/Users/Minh%20Doan/repo_github/SQL/09-nang-cao-va-toi-uu/README.md) | Views, Stored Procedures, Functions, Triggers, EXPLAIN / Index Optimization | 🔲 Chưa học |
| **10** | [`10-du-an-thuc-hanh-bai-tap`](file:///c:/Users/Minh%20Doan/repo_github/SQL/10-du-an-thuc-hanh-bai-tap/README.md) | Bài toán thực tế, Phân tích dữ liệu doanh nghiệp (E-commerce / HR) | 🔲 Chưa học |

---

## 🚀 Hướng Dẫn Học & Push Lên Git Từng Phần

Mỗi khi bạn hoàn thành một module (học lý thuyết + viết code thực hành):

1. **Kiểm tra trạng thái thay đổi:**
   ```bash
   git status
   ```

2. **Thêm thư mục vừa học vào staging (ví dụ module 01):**
   ```bash
   git add 01-co-ban-sql/
   ```

3. **Commit kèm thông điệp rõ ràng:**
   ```bash
   git commit -m "feat(01): hoan thanh module 01 - co ban sql"
   ```

4. **Đẩy lên GitHub:**
   ```bash
   git push origin main
   ```
*(Nếu nhánh chính của bạn là `master`, hãy đổi `main` thành `master`)*