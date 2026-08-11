-- ======================================================
-- File       : super_admin_login.sql
-- Module     : People
-- Description: Stores login credentials for the
--              system super administrator
-- ======================================================

CREATE TABLE super_admin_login (

    id VARCHAR(36) PRIMARY KEY,

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