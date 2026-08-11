-- ======================================================
-- File       : notifications_indexes.sql
-- Module     : Notifications
-- Description: Indexes for notifications table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_notifications_school
ON notifications(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_notifications_recipient
ON notifications(recipient_type, recipient_id);

CREATE INDEX idx_notifications_sender
ON notifications(sender_type, sender_id);

CREATE INDEX idx_notifications_type
ON notifications(notification_type);

CREATE INDEX idx_notifications_channel
ON notifications(channel);

CREATE INDEX idx_notifications_status
ON notifications(status);

CREATE INDEX idx_notifications_read_at
ON notifications(read_at);

-- ======================================================
-- Composite Indexes
-- ======================================================

CREATE INDEX idx_notifications_recipient_status
ON notifications(recipient_type, recipient_id, status);

CREATE INDEX idx_notifications_school_status
ON notifications(school_id, status);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_notifications_created_at
ON notifications(created_at);