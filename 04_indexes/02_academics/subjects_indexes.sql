-- ======================================================
-- File       : subjects_indexes.sql
-- Module     : Academics
-- Description: Indexes for subjects table
-- ======================================================

CREATE INDEX idx_subjects_school
ON subjects(school_id);

CREATE INDEX idx_subjects_name
ON subjects(name);

CREATE INDEX idx_subjects_created_at
ON subjects(created_at);