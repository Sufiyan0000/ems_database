-- ======================================================
-- File       : teacher_subjects.sql
-- Module     : Teacher Subjects
-- Description: Maps teachers to subjects they teach
-- ======================================================

CREATE TABLE teacher_subjects (
    id VARCHAR(36) NOT NULL PRIMARY KEY,

    teacher_id VARCHAR(36) NOT NULL,
    subject_id VARCHAR(36) NOT NULL,
    class_id VARCHAR(36) NOT NULL,
    section_id VARCHAR(36) NOT NULL,
    academic_year_id VARCHAR(36) NOT NULL,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP
);