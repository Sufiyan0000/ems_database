-- ======================================================
-- File       : book_issues_constraints.sql
-- Module     : Library
-- Description: Foreign key, unique and check constraints
--              for book_issues
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE book_issues
ADD CONSTRAINT fk_book_issues_book
FOREIGN KEY (book_id)
REFERENCES books(book_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE book_issues
ADD CONSTRAINT fk_book_issues_student
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

-- No unique constraints required.
-- A student may borrow the same book multiple times over time.

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE book_issues
ADD CONSTRAINT chk_book_issues_fine_amount
CHECK (
    fine_amount >= 0
);

ALTER TABLE book_issues
ADD CONSTRAINT chk_book_issues_due_date
CHECK (
    due_date >= issue_date
);

ALTER TABLE book_issues
ADD CONSTRAINT chk_book_issues_return_date
CHECK (
    return_date IS NULL
    OR return_date >= issue_date
);