-- ======================================================
-- File       : parents_constraints.sql
-- Module     : People
-- Description: Foreign key, unique and check constraints
--              for parents
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE parents
ADD CONSTRAINT fk_parents_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE parents
ADD CONSTRAINT uq_parents_school_email
UNIQUE (
    school_id,
    email
);

ALTER TABLE parents
ADD CONSTRAINT uq_parents_school_phone
UNIQUE (
    school_id,
    phone
);

ALTER TABLE parents
ADD CONSTRAINT uq_parents_school_mobile
UNIQUE (
    school_id,
    mobile
);