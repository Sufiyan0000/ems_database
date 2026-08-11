-- ======================================================
-- File       : exam_results_indexes.sql
-- Module     : Academics
-- Description: Indexes for exam_results table
-- ======================================================

CREATE INDEX idx_exam_results_exam
ON exam_results(exam_id);

CREATE INDEX idx_exam_results_student
ON exam_results(student_id);

CREATE INDEX idx_exam_results_subject
ON exam_results(subject_id);

CREATE INDEX idx_exam_results_status
ON exam_results(result_status);

CREATE INDEX idx_exam_results_student_exam
ON exam_results(student_id, exam_id);

CREATE INDEX idx_exam_results_created_at
ON exam_results(created_at);