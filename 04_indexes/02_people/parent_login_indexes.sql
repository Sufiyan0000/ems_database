-- ======================================================
-- File       : parent_login_indexes.sql
-- Module     : People
-- Description: Indexes for parent_login table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_parent_login_parent
ON parent_login(parent_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_parent_login_status
ON parent_login(status);

CREATE INDEX idx_parent_login_last_login
ON parent_login(last_login);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_parent_login_created_at
ON parent_login(created_at);