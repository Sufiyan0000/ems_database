-- ======================================================
-- File       : subjects_constraints.sql
-- Module     : Academics
-- Description: Foreign key constraints for subjects
-- ======================================================

ALTER TABLE subjects
ADD CONSTRAINT fk_subjects_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;