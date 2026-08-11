-- ======================================================
-- File       : student_parents_indexes.sql
-- Module     : People
-- Description: Indexes for student_parents table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_student_parents_student
ON student_parents(student_id);

CREATE INDEX idx_student_parents_parent
ON student_parents(parent_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_student_parents_relationship
ON student_parents(relationship);

CREATE INDEX idx_student_parents_primary_contact
ON student_parents(is_primary_contact);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_student_parents_created_at
ON student_parents(created_at);