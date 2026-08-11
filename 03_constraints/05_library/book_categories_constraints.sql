-- ======================================================
-- File       : book_categories_constraints.sql
-- Module     : Library
-- Description: Foreign key, unique and check constraints
--              for book_categories
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE book_categories
ADD CONSTRAINT fk_book_categories_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE book_categories
ADD CONSTRAINT uq_book_categories_school_title
UNIQUE (
    school_id,
    title
);

-- ======================================================
-- Check Constraints
-- ======================================================
-- No check constraints required.