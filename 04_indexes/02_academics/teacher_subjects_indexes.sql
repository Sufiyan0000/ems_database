-- ======================================================
-- File       : teacher_subjects_indexes.sql
-- Module     : Academics
-- Description: Indexes for teacher_subjects table
-- ======================================================

CREATE INDEX idx_teacher_subjects_teacher
ON teacher_subjects(teacher_id);

CREATE INDEX idx_teacher_subjects_subject
ON teacher_subjects(subject_id);

CREATE INDEX idx_teacher_subjects_class
ON teacher_subjects(class_id);

CREATE INDEX idx_teacher_subjects_section
ON teacher_subjects(section_id);

CREATE INDEX idx_teacher_subjects_academic_year
ON teacher_subjects(academic_year_id);

CREATE INDEX idx_teacher_subjects_class_section
ON teacher_subjects(class_id, section_id);

CREATE INDEX idx_teacher_subjects_created_at
ON teacher_subjects(created_at);