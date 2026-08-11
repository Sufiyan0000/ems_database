-- ======================================================
-- File       : students.sql
-- Module     : People
-- Description: Stores student information
-- ======================================================

CREATE TABLE students (

    student_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    admission_no VARCHAR(50) NOT NULL,

    first_name VARCHAR(100) NOT NULL,

    last_name VARCHAR(100) NOT NULL,

    gender ENUM(
        'Male',
        'Female',
        'Other'
    ) NOT NULL,

    dob DATE NOT NULL,

    qualification VARCHAR(100),

    join_date DATE NOT NULL,

    address VARCHAR(255),

    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE,
    
    profile_image VARCHAR(500),

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);