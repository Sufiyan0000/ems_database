-- ======================================================
-- File       : books_indexes.sql
-- Module     : Library
-- Description: Indexes for books table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_books_school
ON books(school_id);

CREATE INDEX idx_books_category
ON books(category_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_books_title
ON books(title);

CREATE INDEX idx_books_author
ON books(author);

CREATE INDEX idx_books_publisher
ON books(publisher);

CREATE INDEX idx_books_status
ON books(status);

-- ======================================================
-- Composite Indexes
-- ======================================================

CREATE INDEX idx_books_category_status
ON books(category_id, status);

CREATE INDEX idx_books_school_status
ON books(school_id, status);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_books_created_at
ON books(created_at);