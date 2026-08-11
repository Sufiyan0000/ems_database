-- ======================================================
-- File       : super_admin_login_indexes.sql
-- Module     : People
-- Description: Indexes for super_admin_login table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

-- None

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_super_admin_login_status
ON super_admin_login(status);

CREATE INDEX idx_super_admin_login_last_login
ON super_admin_login(last_login);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_super_admin_login_created_at
ON super_admin_login(created_at);