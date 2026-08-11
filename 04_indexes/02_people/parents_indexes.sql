-- ======================================================
-- File       : parents_indexes.sql
-- Module     : People
-- Description: Indexes for parents table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_parents_school
ON parents(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_parents_name
ON parents(first_name, last_name);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_parents_created_at
ON parents(created_at);