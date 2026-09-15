-- =============================================
-- Module 09: Triggers (Kích Hoạt Tự Động)
-- =============================================

-- Bảng ghi nhật ký thay đổi lương
CREATE TABLE salary_audit_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    old_salary DECIMAL(10, 2),
    new_salary DECIMAL(10, 2),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Trigger tự động kích hoạt TRƯỚC hoặc SAU khi UPDATE bảng employees
DELIMITER //
CREATE TRIGGER trg_after_salary_update
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    IF OLD.salary <> NEW.salary THEN
        INSERT INTO salary_audit_log(employee_id, old_salary, new_salary)
        VALUES (OLD.employee_id, OLD.salary, NEW.salary);
    END IF;
END //
DELIMITER ;
