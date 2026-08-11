-- ======================================================
-- File       : student_login_constraints.sql
-- Module     : User
-- Description: Foreign key, unique and check constraints
--              for student_login
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE student_login
ADD CONSTRAINT fk_student_login_student
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE student_login
ADD CONSTRAINT uq_student_login_student
UNIQUE (student_id);

ALTER TABLE student_login
ADD CONSTRAINT uq_student_login_email
UNIQUE (email);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE student_login
ADD CONSTRAINT chk_student_login_last_login
CHECK (
    last_login IS NULL
    OR last_login <= CURRENT_TIMESTAMP
);