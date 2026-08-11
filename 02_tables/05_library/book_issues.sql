-- ======================================================
-- File       : book_issues.sql
-- Module     : Library
-- Description: Stores book issue and return records
-- ======================================================

CREATE TABLE book_issues (

    issue_id VARCHAR(36) PRIMARY KEY,

    book_id VARCHAR(36) NOT NULL,

    student_id VARCHAR(36) NOT NULL,

    issue_date DATE NOT NULL,

    due_date DATE NOT NULL,

    return_date DATE,

    fine_amount DECIMAL(10,2) NOT NULL DEFAULT 0.00,

    remarks VARCHAR(255),

    status ENUM(
        'Issued',
        'Returned',
        'Lost',
        'Overdue'
    ) NOT NULL DEFAULT 'Issued',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);