-- ======================================================
-- File       : sections.sql
-- Module     : Sections
-- Description: Stores sections of each class
-- ======================================================

CREATE TABLE sections (

    section_id VARCHAR(36) PRIMARY KEY,

    class_id VARCHAR(36) NOT NULL,

    name VARCHAR(20) NOT NULL,

    capacity INT NOT NULL,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP

);