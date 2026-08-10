-- ======================================================
-- File       : parents.sql
-- Module     : People
-- Description: Stores parent/guardian information
-- ======================================================

CREATE TABLE parents (

    parent_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    first_name VARCHAR(100) NOT NULL,

    last_name VARCHAR(100) NOT NULL,

    email VARCHAR(255),

    phone VARCHAR(20) NOT NULL,
    mobile VARCHAR(20) NOT NULL,

    address VARCHAR(255),


    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);