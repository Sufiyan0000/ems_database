-- ======================================================
-- File       : school_admin_login_constraints.sql
-- Module     : User
-- Description: Foreign key, unique and check constraints
--              for school_admin_login
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE school_admin_login
ADD CONSTRAINT fk_school_admin_login_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE school_admin_login
ADD CONSTRAINT uq_school_admin_login_school
UNIQUE (school_id);

ALTER TABLE school_admin_login
ADD CONSTRAINT uq_school_admin_login_email
UNIQUE (email);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE school_admin_login
ADD CONSTRAINT chk_school_admin_login_last_login
CHECK (
    last_login IS NULL
    OR last_login <= CURRENT_TIMESTAMP
);