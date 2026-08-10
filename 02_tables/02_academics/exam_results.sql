-- ======================================================
-- File       : exam_results.sql
-- Module     : Academics
-- Description: Stores subject-wise examination results
--              of students
-- ======================================================

CREATE TABLE exam_results (

    id VARCHAR(36) PRIMARY KEY,

    exam_id VARCHAR(36) NOT NULL,

    student_id VARCHAR(36) NOT NULL,

    subject_id VARCHAR(36) NOT NULL,

    marks_obtained DECIMAL(5,2) NOT NULL,

    max_marks DECIMAL(5,2) NOT NULL,

    grade VARCHAR(5),

    result_status ENUM(
        'Pass',
        'Fail',
        'Absent'
    ) NOT NULL,

    remarks VARCHAR(255),

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);