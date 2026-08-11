-- ======================================================
-- File       : fee_payment_indexes.sql
-- Module     : Finance
-- Description: Indexes for fee_payment table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_fee_payment_student
ON fee_payment(student_id);

CREATE INDEX idx_fee_payment_category
ON fee_payment(fee_category_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_fee_payment_status
ON fee_payment(status);

CREATE INDEX idx_fee_payment_due_date
ON fee_payment(due_date);

CREATE INDEX idx_fee_payment_payment_date
ON fee_payment(payment_date);

CREATE INDEX idx_fee_payment_mode
ON fee_payment(payment_mode);

-- ======================================================
-- Composite Indexes
-- ======================================================

CREATE INDEX idx_fee_payment_student_status
ON fee_payment(student_id, status);

CREATE INDEX idx_fee_payment_student_due_date
ON fee_payment(student_id, due_date);

CREATE INDEX idx_fee_payment_category_status
ON fee_payment(fee_category_id, status);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_fee_payment_created_at
ON fee_payment(created_at);