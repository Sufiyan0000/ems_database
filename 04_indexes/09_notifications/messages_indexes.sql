-- ======================================================
-- File       : messages_indexes.sql
-- Module     : Notifications
-- Description: Indexes for messages table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_messages_school
ON messages(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_messages_conversation
ON messages(conversation_id);

CREATE INDEX idx_messages_sender
ON messages(sender_type, sender_id);

CREATE INDEX idx_messages_receiver
ON messages(receiver_type, receiver_id);

CREATE INDEX idx_messages_type
ON messages(message_type);

CREATE INDEX idx_messages_is_read
ON messages(is_read);

CREATE INDEX idx_messages_created_at
ON messages(created_at);

-- ======================================================
-- Composite Indexes
-- ======================================================

CREATE INDEX idx_messages_conversation_created
ON messages(conversation_id, created_at);

CREATE INDEX idx_messages_receiver_read
ON messages(receiver_type, receiver_id, is_read);

CREATE INDEX idx_messages_sender_receiver
ON messages(sender_type, sender_id, receiver_type, receiver_id);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_messages_updated_at
ON messages(updated_at);