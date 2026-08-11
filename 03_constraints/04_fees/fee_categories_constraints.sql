-- ======================================================
-- File       : fee_categories_constraints.sql
-- Module     : Fees
-- Description: Foreign key, unique and check constraints
--              for fee_categories
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE fee_categories
ADD CONSTRAINT fk_fee_categories_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE fee_categories
ADD CONSTRAINT uq_fee_categories_school_category
UNIQUE (
    school_id,
    category_name
);

-- ======================================================
-- Check Constraints
-- ======================================================
-- No check constraints required.