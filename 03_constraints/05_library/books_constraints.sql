-- ======================================================
-- File       : books_constraints.sql
-- Module     : Library
-- Description: Foreign key, unique and check constraints
--              for books
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE books
ADD CONSTRAINT fk_books_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE books
ADD CONSTRAINT fk_books_category
FOREIGN KEY (category_id)
REFERENCES book_categories(category_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE books
ADD CONSTRAINT uq_books_school_isbn
UNIQUE (
    school_id,
    isbn
);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE books
ADD CONSTRAINT chk_books_total_copies
CHECK (
    total_copies >= 0
);

ALTER TABLE books
ADD CONSTRAINT chk_books_available_copies
CHECK (
    available_copies >= 0
);

ALTER TABLE books
ADD CONSTRAINT chk_books_available_limit
CHECK (
    available_copies <= total_copies
);