-- ======================================================
-- File       : documents.sql
-- Module     : Documents
-- Description: Stores uploaded documents for students,
--              teachers, parents and other entities
-- ======================================================

CREATE TABLE documents (

    document_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    document_owner_type ENUM(
        'Student',
        'Teacher',
        'Parent'
    ) NOT NULL,

    document_owner_id VARCHAR(36) NOT NULL,

    document_type ENUM(
        'Aadhaar',
        'Birth Certificate',
        'Transfer Certificate',
        'Marksheet',
        'Passport',
        'Photo',
        'Driving License',
        'PAN',
        'Other'
    ) NOT NULL,

    document_name VARCHAR(255) NOT NULL,

    file_url VARCHAR(500) NOT NULL,

    file_size BIGINT NOT NULL,

    file_format VARCHAR(20) NOT NULL,

    uploaded_by_type ENUM(
        'Student',
        'Teacher',
        'Parent',
        'School Admin',
        'Super Admin'
    ) NOT NULL,

    uploaded_by_id VARCHAR(36) NOT NULL,

    uploaded_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    verification_status ENUM(
        'Pending',
        'Verified',
        'Rejected'
    ) NOT NULL DEFAULT 'Pending',

    remarks VARCHAR(255),

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);