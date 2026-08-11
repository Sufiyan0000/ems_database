-- ======================================================
-- File       : student_parents.sql
-- Module     : People
-- Description: Maps students with their parents/
--              guardians
-- ======================================================

CREATE TABLE student_parents (

    id VARCHAR(36) PRIMARY KEY,

    student_id VARCHAR(36) NOT NULL,

    parent_id VARCHAR(36) NOT NULL,

    relationship ENUM(
        'Father',
        'Mother',
        'Guardian'
    ) NOT NULL,

    is_primary_contact BOOLEAN NOT NULL DEFAULT FALSE,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);