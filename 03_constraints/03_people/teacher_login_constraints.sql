-- ======================================================
-- File       : teacher_login_constraints.sql
-- Module     : User
-- Description: Foreign key, unique and check constraints
--              for teacher_login
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE teacher_login
ADD CONSTRAINT fk_teacher_login_teacher
FOREIGN KEY (teacher_id)
REFERENCES teachers(teacher_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE teacher_login
ADD CONSTRAINT uq_teacher_login_teacher
UNIQUE (teacher_id);

ALTER TABLE teacher_login
ADD CONSTRAINT uq_teacher_login_email
UNIQUE (email);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE teacher_login
ADD CONSTRAINT chk_teacher_login_last_login
CHECK (
    last_login IS NULL
    OR last_login <= CURRENT_TIMESTAMP
);