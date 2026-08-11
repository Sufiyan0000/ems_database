-- ======================================================
-- File       : student_classes_indexes.sql
-- Module     : Academics
-- Description: Indexes for student_classes table
-- ======================================================

CREATE INDEX idx_student_classes_student
ON student_classes(student_id);

CREATE INDEX idx_student_classes_class
ON student_classes(class_id);

CREATE INDEX idx_student_classes_section
ON student_classes(section_id);

CREATE INDEX idx_student_classes_academic_year
ON student_classes(academic_year_id);

CREATE INDEX idx_student_classes_status
ON student_classes(status);

CREATE INDEX idx_student_classes_created_at
ON student_classes(created_at);

CREATE INDEX idx_student_classes_class_section
ON student_classes(class_id, section_id);

CREATE INDEX idx_student_classes_student_year
ON student_classes(student_id, academic_year_id);