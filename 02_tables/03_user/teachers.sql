-- ======================================================
-- File       : teachers.sql
-- Module     : People
-- Description: Stores teacher information
-- ======================================================

CREATE TABLE teachers (

    teacher_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    employee_id VARCHAR(50) NOT NULL,

    first_name VARCHAR(100) NOT NULL,

    last_name VARCHAR(100) NOT NULL,

    email VARCHAR(255) NOT NULL,

    phone VARCHAR(20) NOT NULL,

    qualification VARCHAR(100) NOT NULL,

    join_date DATE NOT NULL,

    address VARCHAR(255),

    profile_image VARCHAR(500),

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);