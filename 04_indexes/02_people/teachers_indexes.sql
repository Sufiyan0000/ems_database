-- ======================================================
-- File       : teachers_indexes.sql
-- Module     : People
-- Description: Indexes for teachers table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_teachers_school
ON teachers(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_teachers_name
ON teachers(first_name, last_name);

CREATE INDEX idx_teachers_join_date
ON teachers(join_date);

CREATE INDEX idx_teachers_qualification
ON teachers(qualification);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_teachers_created_at
ON teachers(created_at);