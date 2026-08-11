-- ======================================================
-- File       : documents_constraints.sql
-- Module     : Documents
-- Description: Foreign key, unique and check constraints
--              for documents
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE documents
ADD CONSTRAINT fk_documents_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE documents
ADD CONSTRAINT uq_documents_file_url
UNIQUE (file_url);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE documents
ADD CONSTRAINT chk_documents_file_size
CHECK (
    file_size > 0
);