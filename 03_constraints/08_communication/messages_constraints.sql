-- ======================================================
-- File       : messages_constraints.sql
-- Module     : Notifications
-- Description: Foreign key, unique and check constraints
--              for messages
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE messages
ADD CONSTRAINT fk_messages_school
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

ALTER TABLE messages
ADD CONSTRAINT chk_messages_read_at
CHECK (
    read_at IS NULL
    OR read_at >= created_at
);

ALTER TABLE messages
ADD CONSTRAINT chk_messages_sender_receiver
CHECK (
    NOT (
        sender_type = receiver_type
        AND sender_id = receiver_id
    )
);