-- ======================================================
-- File       : exams_constraints.sql
-- Module     : Academics
-- Description: Foreign key constraints for exams
-- ======================================================

ALTER TABLE exams
ADD CONSTRAINT fk_exams_class
FOREIGN KEY (class_id)
REFERENCES classes(class_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE exams
ADD CONSTRAINT fk_exams_section
FOREIGN KEY (section_id)
REFERENCES sections(section_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE exams
ADD CONSTRAINT fk_exams_academic_year
FOREIGN KEY (academic_year_id)
REFERENCES academic_years(academic_year_id)
ON UPDATE CASCADE
ON DELETE RESTRICT

UNIQUE (
    exam_name,
    class_id,
    section_id,
    academic_year_id
);