-- ======================================================
-- File       : attendance_indexes.sql
-- Module     : Academics
-- Description: Indexes for attendance table
-- ======================================================

CREATE INDEX idx_attendance_student
ON attendance(student_id);

CREATE INDEX idx_attendance_class_section
ON attendance(class_id, section_id);

CREATE INDEX idx_attendance_academic_year
ON attendance(academic_year_id);

CREATE INDEX idx_attendance_date
ON attendance(attendance_date);

CREATE INDEX idx_attendance_status
ON attendance(status);

CREATE INDEX idx_attendance_student_date
ON attendance(student_id, attendance_date);

CREATE INDEX idx_attendance_created_at
ON attendance(created_at);