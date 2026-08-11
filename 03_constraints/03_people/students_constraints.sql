-- ======================================================
-- File       : students_constraints.sql
-- Module     : People
-- Description: Foreign key and check constraints
--              for students
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE students
ADD CONSTRAINT fk_students_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE students
ADD CONSTRAINT chk_students_dob
CHECK (
    dob <= CURRENT_DATE
);

ALTER TABLE students
ADD CONSTRAINT chk_students_join_date
CHECK (
    join_date >= dob
);

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE students
ADD CONSTRAINT uq_admission_no_email_phone
UNIQUE (
    admission_no,
    email,
    phone
);