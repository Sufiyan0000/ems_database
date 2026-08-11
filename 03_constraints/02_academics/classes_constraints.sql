-- ======================================================
-- File       : classes_constraints.sql
-- Module     : Academics
-- Description: Foreign key constraints for classes
-- ======================================================

ALTER TABLE classes
ADD CONSTRAINT fk_classes_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;