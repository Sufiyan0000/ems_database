-- ======================================================
-- File       : school_admin_login.sql
-- Module     : People
-- Description: Stores login credentials for school
--              administrators
-- ======================================================

CREATE TABLE school_admin_login (

    id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    email VARCHAR(255) NOT NULL,

    password VARCHAR(255) NOT NULL,

    last_login DATETIME,

    status ENUM(
        'Active',
        'Inactive',
        'Locked'
    ) NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);