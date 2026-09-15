-- =============================================
-- Module 08: Transactions & ACID Properties
-- =============================================

-- Tình huống: Chuyển 5,000,000 từ Tài khoản A sang Tài khoản B

START TRANSACTION; -- Hoặc BEGIN TRANSACTION;

-- Bước 1: Trừ tiền tài khoản A
UPDATE accounts
SET balance = balance - 5000000
WHERE account_id = 'ACC_A' AND balance >= 5000000;

-- Bước 2: Cộng tiền tài khoản B
UPDATE accounts
SET balance = balance + 5000000
WHERE account_id = 'ACC_B';

-- Ghi nhận giao dịch hoàn tất thành công
COMMIT;

-- Nếu có lỗi xảy ra ở bất kỳ bước nào, khôi phục trạng thái ban đầu:
-- ROLLBACK;
