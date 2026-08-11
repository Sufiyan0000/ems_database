-- ======================================================
-- File       : timetable_constraints.sql
-- Module     : Academics
-- Description: Foreign key constraints for timetable
-- ======================================================

ALTER TABLE timetable
ADD CONSTRAINT fk_timetable_subject
FOREIGN KEY (subject_id)
REFERENCES subjects(subject_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE timetable
ADD CONSTRAINT fk_timetable_class
FOREIGN KEY (class_id)
REFERENCES classes(class_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE timetable
ADD CONSTRAINT fk_timetable_section
FOREIGN KEY (section_id)
REFERENCES sections(section_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE timetable
ADD CONSTRAINT fk_timetable_teacher
FOREIGN KEY (teacher_id)
REFERENCES teachers(teacher_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;