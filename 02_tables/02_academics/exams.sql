-- ======================================================
-- File       : exams.sql
-- Module     : Academics
-- Description: Stores examination details for each
--              class, section and academic year
-- ======================================================

CREATE TABLE exams (

    id VARCHAR(36) PRIMARY KEY,

    exam_name VARCHAR(100) NOT NULL,

    exam_type ENUM(
        'Mid Term',
        'Final Term',
        'Unit Test',
        'Quiz',
        'Practical'
    ) NOT NULL,

    class_id VARCHAR(36) NOT NULL,

    section_id VARCHAR(36) NOT NULL,

    academic_year_id VARCHAR(36) NOT NULL,

    start_date DATE NOT NULL,

    end_date DATE NOT NULL,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);