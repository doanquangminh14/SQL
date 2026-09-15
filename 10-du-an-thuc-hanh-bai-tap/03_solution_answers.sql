-- =======================================================
-- Module 10: Lời Giải Mẫu Cho 10 Câu Hỏi Phân Tích
-- =======================================================

-- Lời giải Câu 1: Top 5 khách hàng chi tiêu nhiều nhất năm 2023
SELECT 
    c.customer_id,
    c.full_name,
    SUM(o.total_amount) AS total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'COMPLETED'
  AND o.order_date >= '2023-01-01' AND o.order_date < '2024-01-01'
GROUP BY c.customer_id, c.full_name
ORDER BY total_spent DESC
LIMIT 5;

-- Lời giải Câu 2: Khách hàng chưa từng đặt đơn hàng nào
SELECT c.customer_id, c.full_name, c.email
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Lời giải Câu 4: Sản phẩm bán chạy nhất theo từng danh mục
WITH ProductSales AS (
    SELECT 
        p.category_id,
        cat.category_name,
        p.product_id,
        p.product_name,
        SUM(oi.quantity) AS total_sold,
        DENSE_RANK() OVER (
            PARTITION BY p.category_id 
            ORDER BY SUM(oi.quantity) DESC
        ) AS rank_in_category
    FROM products p
    INNER JOIN categories cat ON p.category_id = cat.category_id
    INNER JOIN order_items oi ON p.product_id = oi.product_id
    INNER JOIN orders o ON oi.order_id = o.order_id
    WHERE o.status = 'COMPLETED'
    GROUP BY p.category_id, cat.category_name, p.product_id, p.product_name
)
SELECT category_name, product_name, total_sold
FROM ProductSales
WHERE rank_in_category = 1;

-- Lời giải Câu 9: Cặp sản phẩm thường xuyên mua kèm (Market Basket Analysis)
SELECT 
    oi1.product_id AS product_a,
    p1.product_name AS name_a,
    oi2.product_id AS product_b,
    p2.product_name AS name_b,
    COUNT(*) AS times_bought_together
FROM order_items oi1
INNER JOIN order_items oi2 
    ON oi1.order_id = oi2.order_id AND oi1.product_id < oi2.product_id
INNER JOIN products p1 ON oi1.product_id = p1.product_id
INNER JOIN products p2 ON oi2.product_id = p2.product_id
GROUP BY oi1.product_id, p1.product_name, oi2.product_id, p2.product_name
ORDER BY times_bought_together DESC
LIMIT 10;
