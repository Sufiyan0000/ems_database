-- ======================================================
-- File       : 02_academic_years.sql
-- Module     : Academic Years
-- Description: Stores academic sessions of a school
-- ======================================================

CREATE TABLE academic_years (

    academic_year_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    title VARCHAR(100) NOT NULL,

    start_date DATE NOT NULL,

    end_date DATE NOT NULL,

    is_active BOOLEAN NOT NULL DEFAULT FALSE

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP
);