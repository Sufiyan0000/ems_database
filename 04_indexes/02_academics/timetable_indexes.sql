-- ======================================================
-- File       : timetable_indexes.sql
-- Module     : Academics
-- Description: Indexes for timetable table
-- ======================================================

CREATE INDEX idx_timetable_teacher
ON timetable(teacher_id);

CREATE INDEX idx_timetable_subject
ON timetable(subject_id);

CREATE INDEX idx_timetable_class_section
ON timetable(class_id, section_id);

CREATE INDEX idx_timetable_day
ON timetable(day_of_week);

CREATE INDEX idx_timetable_start_time
ON timetable(start_time);

CREATE INDEX idx_timetable_created_at
ON timetable(created_at);