-- ======================================================
-- File       : drivers.sql
-- Module     : Transport
-- Description: Stores driver information
-- ======================================================

CREATE TABLE drivers (

    driver_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    first_name VARCHAR(100) NOT NULL,

    last_name VARCHAR(100) NOT NULL,

    phone VARCHAR(20) NOT NULL,

    license_number VARCHAR(50) NOT NULL,

    license_expiry DATE NOT NULL,

    address VARCHAR(255),

    status ENUM(
        'Active',
        'Inactive'
    ) NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);