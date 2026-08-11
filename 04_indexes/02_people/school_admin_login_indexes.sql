-- ======================================================
-- File       : school_admin_login_indexes.sql
-- Module     : People
-- Description: Indexes for school_admin_login table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_school_admin_login_school
ON school_admin_login(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_school_admin_login_status
ON school_admin_login(status);

CREATE INDEX idx_school_admin_login_last_login
ON school_admin_login(last_login);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_school_admin_login_created_at
ON school_admin_login(created_at);