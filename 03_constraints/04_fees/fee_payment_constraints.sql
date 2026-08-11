-- ======================================================
-- File       : fee_payment_constraints.sql
-- Module     : Fees
-- Description: Foreign key, unique and check constraints
--              for fee_payment
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE fee_payment
ADD CONSTRAINT fk_fee_payment_student
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE fee_payment
ADD CONSTRAINT fk_fee_payment_fee_category
FOREIGN KEY (fee_category_id)
REFERENCES fee_categories(fee_category_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE fee_payment
ADD CONSTRAINT uq_fee_payment_receipt_no
UNIQUE (receipt_no);

ALTER TABLE fee_payment
ADD CONSTRAINT uq_fee_payment_transaction_id
UNIQUE (transaction_id);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE fee_payment
ADD CONSTRAINT chk_fee_payment_amount
CHECK (
    amount > 0
);

ALTER TABLE fee_payment
ADD CONSTRAINT chk_fee_payment_discount
CHECK (
    discount >= 0
);

ALTER TABLE fee_payment
ADD CONSTRAINT chk_fee_payment_paid_amount
CHECK (
    paid_amount >= 0
);

ALTER TABLE fee_payment
ADD CONSTRAINT chk_fee_payment_due_amount
CHECK (
    due_amount >= 0
);

ALTER TABLE fee_payment
ADD CONSTRAINT chk_fee_payment_discount_limit
CHECK (
    discount <= amount
);

ALTER TABLE fee_payment
ADD CONSTRAINT chk_fee_payment_paid_limit
CHECK (
    paid_amount <= (amount - discount)
);

ALTER TABLE fee_payment
ADD CONSTRAINT chk_fee_payment_dates
CHECK (
    payment_date IS NULL
    OR payment_date >= due_date
);