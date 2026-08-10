-- ======================================================
-- File       : timetable.sql
-- Module     : Academics
-- Description: Stores the class timetable including
--              subject, teacher, section and timings
-- ======================================================

CREATE TABLE timetable (

    id VARCHAR(36) PRIMARY KEY,

    subject_id VARCHAR(36) NOT NULL,

    class_id VARCHAR(36) NOT NULL,

    section_id VARCHAR(36) NOT NULL,

    teacher_id VARCHAR(36) NOT NULL,

    day_of_week ENUM(
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
) NOT NULL,

    start_time TIME NOT NULL,

    end_time TIME NOT NULL,

    room VARCHAR(50) NOT NULL,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);