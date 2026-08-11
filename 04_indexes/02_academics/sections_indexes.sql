-- ======================================================
-- File       : sections_indexes.sql
-- Module     : Academics
-- Description: Indexes for sections table
-- ======================================================

CREATE INDEX idx_sections_class
ON sections(class_id);

CREATE INDEX idx_sections_created_at
ON sections(created_at);