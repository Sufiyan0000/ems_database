-- ======================================================
-- File       : teacher_subjects_constraints.sql
-- Module     : Academics
-- Description: Foreign key constraints for teacher_subjects
-- ======================================================

ALTER TABLE teacher_subjects
ADD CONSTRAINT fk_teacher_subjects_teacher
FOREIGN KEY (teacher_id)
REFERENCES teachers(teacher_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE teacher_subjects
ADD CONSTRAINT fk_teacher_subjects_subject
FOREIGN KEY (subject_id)
REFERENCES subjects(subject_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE teacher_subjects
ADD CONSTRAINT fk_teacher_subjects_class
FOREIGN KEY (class_id)
REFERENCES classes(class_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE teacher_subjects
ADD CONSTRAINT fk_teacher_subjects_section
FOREIGN KEY (section_id)
REFERENCES sections(section_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE teacher_subjects
ADD CONSTRAINT fk_teacher_subjects_academic_year
FOREIGN KEY (academic_year_id)
REFERENCES academic_years(academic_year_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;