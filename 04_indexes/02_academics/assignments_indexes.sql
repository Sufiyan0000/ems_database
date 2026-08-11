-- ======================================================
-- File       : assignments_indexes.sql
-- Module     : Academics
-- Description: Indexes for assignments table
-- ======================================================

CREATE INDEX idx_assignments_teacher
ON assignments(teacher_id);

CREATE INDEX idx_assignments_subject
ON assignments(subject_id);

CREATE INDEX idx_assignments_class_section
ON assignments(class_id, section_id);

CREATE INDEX idx_assignments_due_date
ON assignments(due_date);

CREATE INDEX idx_assignments_created_at
ON assignments(created_at);