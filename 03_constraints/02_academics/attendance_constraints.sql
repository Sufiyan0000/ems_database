-- ======================================================
-- File       : attendance_constraints.sql
-- Module     : Academics
-- Description: Foreign key constraints for attendance
-- ======================================================

ALTER TABLE attendance
ADD CONSTRAINT fk_attendance_student
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE attendance
ADD CONSTRAINT fk_attendance_academic_year
FOREIGN KEY (academic_year_id)
REFERENCES academic_years(academic_year_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE attendance
ADD CONSTRAINT fk_attendance_class
FOREIGN KEY (class_id)
REFERENCES classes(class_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE attendance
ADD CONSTRAINT fk_attendance_section
FOREIGN KEY (section_id)
REFERENCES sections(section_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;