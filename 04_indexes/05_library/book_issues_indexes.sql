-- ======================================================
-- File       : book_issues_indexes.sql
-- Module     : Library
-- Description: Indexes for book_issues table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_book_issues_book
ON book_issues(book_id);

CREATE INDEX idx_book_issues_student
ON book_issues(student_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_book_issues_status
ON book_issues(status);

CREATE INDEX idx_book_issues_issue_date
ON book_issues(issue_date);

CREATE INDEX idx_book_issues_due_date
ON book_issues(due_date);

CREATE INDEX idx_book_issues_return_date
ON book_issues(return_date);

-- ======================================================
-- Composite Indexes
-- ======================================================

CREATE INDEX idx_book_issues_student_status
ON book_issues(student_id, status);

CREATE INDEX idx_book_issues_book_status
ON book_issues(book_id, status);

CREATE INDEX idx_book_issues_due_status
ON book_issues(due_date, status);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_book_issues_created_at
ON book_issues(created_at);