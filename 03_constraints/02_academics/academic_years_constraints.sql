-- ======================================================
-- File       : academic_years_constraints.sql
-- Module     : Academics
-- Description: Foreign key constraints for academic_years
-- ======================================================

ALTER TABLE academic_years
ADD CONSTRAINT fk_academic_years_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;