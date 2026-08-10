-- ======================================================
-- File       : classes.sql
-- Module     : Classes
-- Description: Stores classes of a school
-- ======================================================

CREATE TABLE classes (

    class_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    name VARCHAR(100) NOT NULL,

    grade VARCHAR(50),

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP

);