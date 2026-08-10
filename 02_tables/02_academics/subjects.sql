-- ======================================================
-- File       : subjects.sql
-- Module     : Subjects
-- Description: Stores school subjects
-- ======================================================

CREATE TABLE subjects (

    subject_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    name VARCHAR(100) NOT NULL,

    code VARCHAR(20) NOT NULL,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP

);