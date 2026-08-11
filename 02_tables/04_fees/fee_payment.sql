-- ======================================================
-- File       : fee_payment.sql
-- Module     : Fees
-- Description: Stores fee payment details of students
-- ======================================================

CREATE TABLE fee_payment (

    fee_payment_id VARCHAR(36) PRIMARY KEY,

    academic_year_id VARCHAR(36) NOT NULL

    student_id VARCHAR(36) NOT NULL,

    fee_category_id VARCHAR(36) NOT NULL,

    amount DECIMAL(10,2) NOT NULL,

    discount DECIMAL(10,2) NOT NULL DEFAULT 0.00,

    paid_amount DECIMAL(10,2) NOT NULL DEFAULT 0.00,

    due_amount DECIMAL(10,2) NOT NULL,

    due_date DATE NOT NULL,

    payment_date DATE,

    payment_mode ENUM(
        'Cash',
        'UPI',
        'Card',
        'Bank Transfer',
        'Cheque'
    ) NOT NULL,

    collected_by VARCHAR(36)

    transaction_id VARCHAR(100),

    receipt_no VARCHAR(50),

    status ENUM(
        'Pending',
        'Partial',
        'Paid',
        'Cancelled'
    ) NOT NULL DEFAULT 'Pending',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);