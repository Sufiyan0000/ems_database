-- ======================================================
-- File       : attendance.sql
-- Module     : Academics
-- Description: Stores daily attendance records
--              for students
-- ======================================================

CREATE TABLE attendance (

    id VARCHAR(36) PRIMARY KEY,

    student_id VARCHAR(36) NOT NULL,

    academic_year_id VARCHAR(36) NOT NULL,

    class_id VARCHAR(36) NOT NULL,

    section_id VARCHAR(36) NOT NULL,

    attendance_date DATE NOT NULL,

    status ENUM(
        'Present',
        'Absent',
        'Late',
        'Half Day',
        'Leave'
    ) NOT NULL,

    remarks VARCHAR(255),

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);