-- ======================================================
-- File       : exams_indexes.sql
-- Module     : Academics
-- Description: Indexes for exams table
-- ======================================================

CREATE INDEX idx_exams_class_section
ON exams(class_id, section_id);

CREATE INDEX idx_exams_academic_year
ON exams(academic_year_id);

CREATE INDEX idx_exams_type
ON exams(exam_type);

CREATE INDEX idx_exams_start_date
ON exams(start_date);

CREATE INDEX idx_exams_created_at
ON exams(created_at);