-- ======================================================
-- File       : documents.sql
-- Module     : Documents
-- Description: Stores student document records
-- ======================================================

CREATE TABLE documents (

    document_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    student_id VARCHAR(36) NOT NULL,

    document_name VARCHAR(255) NOT NULL,

    document_type ENUM(
        'Aadhaar',
        'Birth Certificate',
        'Transfer Certificate',
        'Marksheet',
        'Passport',
        'Photo',
        'Other'
    ) NOT NULL,

    file_url VARCHAR(500) NOT NULL,

    status ENUM(
        'Pending',
        'Verified',
        'Rejected'
    ) NOT NULL DEFAULT 'Pending',

    uploaded_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);