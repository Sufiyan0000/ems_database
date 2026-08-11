-- ======================================================
-- File       : sections_constraints.sql
-- Module     : Academics
-- Description: Foreign key constraints for sections
-- ======================================================

ALTER TABLE sections
ADD CONSTRAINT fk_sections_class
FOREIGN KEY (class_id)
REFERENCES classes(class_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;