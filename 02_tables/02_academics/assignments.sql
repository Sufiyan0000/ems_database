-- ======================================================
-- File       : assignments.sql
-- Module     : Academics
-- Description: Stores assignments created by teachers
--              for students
-- ======================================================

CREATE TABLE assignments (

    id VARCHAR(36) PRIMARY KEY,

    title VARCHAR(255) NOT NULL,

    description TEXT,

    teacher_id VARCHAR(36) NOT NULL,

    subject_id VARCHAR(36) NOT NULL,

    class_id VARCHAR(36) NOT NULL,

    section_id VARCHAR(36) NOT NULL,

    due_date DATE NOT NULL,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);