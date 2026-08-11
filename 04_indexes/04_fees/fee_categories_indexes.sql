-- ======================================================
-- File       : fee_categories_indexes.sql
-- Module     : Finance
-- Description: Indexes for fee_categories table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_fee_categories_school
ON fee_categories(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_fee_categories_name
ON fee_categories(category_name);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_fee_categories_created_at
ON fee_categories(created_at);