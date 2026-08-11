-- ======================================================
-- File       : messages.sql
-- Module     : Communication
-- Description: Stores private messages between users
-- ======================================================

CREATE TABLE messages (

    message_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    conversation_id VARCHAR(36),

    sender_type ENUM(
        'Student',
        'Teacher',
        'Parent',
        'School Admin',
        'Super Admin'
    ) NOT NULL,

    sender_id VARCHAR(36) NOT NULL,

    receiver_type ENUM(
        'Student',
        'Teacher',
        'Parent',
        'School Admin',
        'Super Admin'
    ) NOT NULL,

    receiver_id VARCHAR(36) NOT NULL,

    subject VARCHAR(255),

    message TEXT NOT NULL,

    attachment_path VARCHAR(500),

    message_type ENUM(
        'Text',
        'Image',
        'Document',
        'Video',
        'Audio'
    ) NOT NULL DEFAULT 'Text',

    is_read BOOLEAN NOT NULL DEFAULT FALSE,

    read_at DATETIME,

    deleted_by_sender BOOLEAN NOT NULL DEFAULT FALSE,

    deleted_by_receiver BOOLEAN NOT NULL DEFAULT FALSE,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);