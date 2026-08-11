-- ======================================================
-- File       : routes.sql
-- Module     : Transport
-- Description: Stores transport routes for schools
-- ======================================================

CREATE TABLE routes (

    route_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    route_name VARCHAR(100) NOT NULL,

    start_location VARCHAR(255) NOT NULL,

    end_location VARCHAR(255) NOT NULL,

    distance_km DECIMAL(6,2),

    estimated_duration INT,

    status ENUM(
        'Active',
        'Inactive'
    ) NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);