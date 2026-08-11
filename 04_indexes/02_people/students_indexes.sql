-- ======================================================
-- File       : students_indexes.sql
-- Module     : People
-- Description: Indexes for students table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_students_school
ON students(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_students_name
ON students(first_name, last_name);

CREATE INDEX idx_students_join_date
ON students(join_date);

CREATE INDEX idx_students_dob
ON students(dob);

CREATE INDEX idx_students_gender
ON students(gender);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_students_created_at
ON students(created_at);