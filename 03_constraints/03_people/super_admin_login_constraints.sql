-- ======================================================
-- File       : super_admin_login_constraints.sql
-- Module     : User
-- Description: Unique and check constraints
--              for super_admin_login
-- ======================================================

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE super_admin_login
ADD CONSTRAINT uq_super_admin_login_email
UNIQUE (email);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE super_admin_login
ADD CONSTRAINT chk_super_admin_login_last_login
CHECK (
    last_login IS NULL
    OR last_login <= CURRENT_TIMESTAMP
);