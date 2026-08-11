-- ======================================================
-- File       : book_categories_indexes.sql
-- Module     : Library
-- Description: Indexes for book_categories table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_book_categories_school
ON book_categories(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_book_categories_title
ON book_categories(title);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_book_categories_created_at
ON book_categories(created_at);