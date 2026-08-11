-- ======================================================
-- File       : parent_login_constraints.sql
-- Module     : User
-- Description: Foreign key, unique and check constraints
--              for parent_login
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE parent_login
ADD CONSTRAINT fk_parent_login_parent
FOREIGN KEY (parent_id)
REFERENCES parents(parent_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE parent_login
ADD CONSTRAINT uq_parent_login_parent
UNIQUE (parent_id);

ALTER TABLE parent_login
ADD CONSTRAINT uq_parent_login_email
UNIQUE (email);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE parent_login
ADD CONSTRAINT chk_parent_login_last_login
CHECK (
    last_login IS NULL
    OR last_login <= CURRENT_TIMESTAMP
);