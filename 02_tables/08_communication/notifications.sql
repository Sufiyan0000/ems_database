-- ======================================================
-- File       : notifications.sql
-- Module     : Communication
-- Description: Stores notifications sent to users
-- ======================================================

CREATE TABLE notifications (

    notification_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    recipient_type ENUM(
        'Student',
        'Parent',
        'Teacher',
        'School Admin',
        'Super Admin'
    ) NOT NULL,

    recipient_id VARCHAR(36) NOT NULL,

    title VARCHAR(255) NOT NULL,

    message TEXT NOT NULL,

    status ENUM(
        'Pending',
        'Sent',
        'Delivered',
        'Failed'
    ) NOT NULL DEFAULT 'Pending',

    read_at DATETIME,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);