-- ======================================================
-- File       : teacher_login_indexes.sql
-- Module     : People
-- Description: Indexes for teacher_login table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_teacher_login_teacher
ON teacher_login(teacher_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_teacher_login_status
ON teacher_login(status);

CREATE INDEX idx_teacher_login_last_login
ON teacher_login(last_login);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_teacher_login_created_at
ON teacher_login(created_at);