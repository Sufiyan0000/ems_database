-- ======================================================
-- File       : teachers_constraints.sql
-- Module     : People
-- Description: Foreign key, unique and check constraints
--              for teachers
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE teachers
ADD CONSTRAINT fk_teachers_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE teachers
ADD CONSTRAINT uq_teachers_school_employee_id
UNIQUE (
    school_id,
    employee_id
);

ALTER TABLE teachers
ADD CONSTRAINT uq_teachers_school_email
UNIQUE (
    school_id,
    email
);

ALTER TABLE teachers
ADD CONSTRAINT uq_teachers_school_phone
UNIQUE (
    school_id,
    phone
);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE teachers
ADD CONSTRAINT chk_teachers_join_date
CHECK (
    join_date <= CURRENT_DATE
);