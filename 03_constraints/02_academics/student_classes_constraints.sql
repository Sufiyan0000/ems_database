-- ======================================================
-- File       : student_classes_constraints.sql
-- Module     : Academics
-- Description: Foreign key constraints for student_classes
-- ======================================================

ALTER TABLE student_classes
ADD CONSTRAINT fk_student_classes_student
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE student_classes
ADD CONSTRAINT fk_student_classes_class
FOREIGN KEY (class_id)
REFERENCES classes(class_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE student_classes
ADD CONSTRAINT fk_student_classes_section
FOREIGN KEY (section_id)
REFERENCES sections(section_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE student_classes
ADD CONSTRAINT fk_student_classes_academic_year
FOREIGN KEY (academic_year_id)
REFERENCES academic_years(academic_year_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;