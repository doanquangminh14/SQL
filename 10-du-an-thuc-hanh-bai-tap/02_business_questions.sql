-- =======================================================
-- Module 10: 10 Câu Hỏi Phân Tích Dữ Liệu Kinh Doanh Thực Tế
-- =======================================================

-- Câu 1: Tìm Top 5 khách hàng chi tiêu nhiều nhất trong năm 2023.
-- Gợi ý: JOIN customers, orders, điều kiện status = 'COMPLETED', SUM(total_amount), LIMIT 5.

-- Câu 2: Tìm những khách hàng chưa từng đặt bất kỳ đơn hàng nào.
-- Gợi ý: LEFT JOIN hoặc NOT EXISTS.

-- Câu 3: Tính doanh thu theo từng danh mục sản phẩm (Category) và sắp xếp giảm dần.
-- Gợi ý: JOIN categories, products, order_items, orders.

-- Câu 4: Tìm sản phẩm bán chạy nhất (theo số lượng quantity) của mỗi danh mục.
-- Gợi ý: Window function DENSE_RANK() OVER (PARTITION BY category_id ORDER BY total_qty DESC).

-- Câu 5: Tính doanh thu hàng tháng trong năm 2023 và phần trăm tăng trưởng so với tháng trước (MoM Growth Rate).
-- Gợi ý: CTE + LAG().

-- Câu 6: Tính giá trị trung bình của mỗi đơn hàng (AOV - Average Order Value) theo từng thành phố của khách hàng.

-- Câu 7: Tìm những đơn hàng có chứa từ 3 sản phẩm phân biệt trở lên.
-- Gợi ý: GROUP BY order_id HAVING COUNT(DISTINCT product_id) >= 3.

-- Câu 8: Phân khúc khách hàng thành 3 nhóm: 'VIP' (tổng chi tiêu > 50tr), 'Tiềm năng' (10tr - 50tr), 'Phổ thông' (< 10tr).
-- Gợi ý: CASE WHEN kết hợp SUM(total_amount).

-- Câu 9: Tìm các cặp sản phẩm thường xuyên được mua cùng nhau trong cùng một đơn hàng (Market Basket Analysis).
-- Gợi ý: SELF JOIN trên bảng order_items với điều kiện itemA.product_id < itemB.product_id.

-- Câu 10: Tính tỷ lệ giữ chân khách hàng (Retention) hoặc tỷ lệ khách hàng có mua lại lần thứ 2 (Repeat Customer Rate).
