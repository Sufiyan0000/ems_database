-- ======================================================
-- File       : assignment_submissions_indexes.sql
-- Module     : Academics
-- Description: Indexes for assignment_submissions table
-- ======================================================

CREATE INDEX idx_assignment_submissions_assignment
ON assignment_submissions(assignment_id);

CREATE INDEX idx_assignment_submissions_student
ON assignment_submissions(student_id);

CREATE INDEX idx_assignment_submissions_submission_date
ON assignment_submissions(submission_date);

CREATE INDEX idx_assignment_submissions_is_late
ON assignment_submissions(is_late);

CREATE INDEX idx_assignment_submissions_assignment_student
ON assignment_submissions(assignment_id, student_id);

CREATE INDEX idx_assignment_submissions_created_at
ON assignment_submissions(created_at);