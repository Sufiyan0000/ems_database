-- ======================================================
-- File       : assignment_submissions.sql
-- Module     : Academics
-- Description: Stores assignment submissions made
--              by students
-- ======================================================

CREATE TABLE assignment_submissions (

    id VARCHAR(36) PRIMARY KEY,

    assignment_id VARCHAR(36) NOT NULL,

    student_id VARCHAR(36) NOT NULL,

    submission_date DATETIME NOT NULL,

    file_path VARCHAR(500),

    marks_obtained DECIMAL(5,2),

    remarks VARCHAR(255),

    is_late BOOLEAN NOT NULL DEFAULT FALSE,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);