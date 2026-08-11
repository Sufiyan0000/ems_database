-- ======================================================
-- File       : exam_results_constraints.sql
-- Module     : Academics
-- Description: Foreign key constraints for exam_results
-- ======================================================

ALTER TABLE exam_results
ADD CONSTRAINT fk_exam_results_exam
FOREIGN KEY (exam_id)
REFERENCES exams(id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE exam_results
ADD CONSTRAINT fk_exam_results_student
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE exam_results
ADD CONSTRAINT fk_exam_results_subject
FOREIGN KEY (subject_id)
REFERENCES subjects(subject_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;