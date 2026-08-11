-- ======================================================
-- File       : student_transport.sql
-- Module     : Transport
-- Description: Maps students to transport vehicles
-- ======================================================

CREATE TABLE student_transport (

    id VARCHAR(36) PRIMARY KEY,

    student_id VARCHAR(36) NOT NULL,

    vehicle_id VARCHAR(36) NOT NULL,

    pickup_stop VARCHAR(255) NOT NULL,

    drop_stop VARCHAR(255) NOT NULL,

    academic_year_id VARCHAR(36) NOT NULL,

    status ENUM(
        'Active',
        'Inactive'
    ) NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);