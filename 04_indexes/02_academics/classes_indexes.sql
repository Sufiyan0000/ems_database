-- ======================================================
-- File       : classes_indexes.sql
-- Module     : Academics
-- Description: Indexes for classes table
-- ======================================================

CREATE INDEX idx_classes_school
ON classes(school_id);

CREATE INDEX idx_classes_created_at
ON classes(created_at);