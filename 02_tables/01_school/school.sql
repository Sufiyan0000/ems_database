-- ======================================================
-- File       : school.sql
-- Module     : School
-- Description: Stores school information
-- ======================================================

CREATE TABLE schools (

    school_id VARCHAR(36) PRIMARY KEY,

    name VARCHAR(150) NOT NULL,

    address VARCHAR(255) NOT NULL,

    email VARCHAR(150) NOT NULL,

    phone VARCHAR(15) NOT NULL,

    logo VARCHAR(255),

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP

    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP

);