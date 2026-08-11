-- ======================================================
-- File       : student_login_indexes.sql
-- Module     : People
-- Description: Indexes for student_login table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_student_login_student
ON student_login(student_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_student_login_status
ON student_login(status);

CREATE INDEX idx_student_login_last_login
ON student_login(last_login);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_student_login_created_at
ON student_login(created_at);