-- ======================================================
-- File       : notifications_constraints.sql
-- Module     : Notifications
-- Description: Foreign key, unique and check constraints
--              for notifications
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE notifications
ADD CONSTRAINT fk_notifications_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

-- No unique constraints required.

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE notifications
ADD CONSTRAINT chk_notifications_read_at
CHECK (
    read_at IS NULL
    OR read_at >= created_at
);

ALTER TABLE notifications
ADD CONSTRAINT chk_notifications_sender
CHECK (
    (
        sender_type IS NULL
        AND sender_id IS NULL
    )
    OR
    (
        sender_type IS NOT NULL
        AND sender_id IS NOT NULL
    )
);