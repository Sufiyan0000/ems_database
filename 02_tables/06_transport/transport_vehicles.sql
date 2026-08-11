-- ======================================================
-- File       : transport_vehicles.sql
-- Module     : Transport
-- Description: Stores transport vehicle information
-- ======================================================

CREATE TABLE transport_vehicles (

    vehicle_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    route_id VARCHAR(36) NOT NULL,

    vehicle_no VARCHAR(20) NOT NULL,

    driver_name VARCHAR(100) NOT NULL,

    driver_phone VARCHAR(20) NOT NULL,

    capacity INT NOT NULL,

    status ENUM(
        'Active',
        'Inactive',
        'Maintenance'
    ) NOT NULL DEFAULT 'Active',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CHECK (capacity > 0)

);