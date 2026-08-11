-- ======================================================
-- File       : id_cards_indexes.sql
-- Module     : Documents
-- Description: Indexes for id_cards table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_id_cards_school
ON id_cards(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_id_cards_owner
ON id_cards(owner_type, owner_id);

CREATE INDEX idx_id_cards_issue_date
ON id_cards(issue_date);

CREATE INDEX idx_id_cards_expiry_date
ON id_cards(expiry_date);

CREATE INDEX idx_id_cards_status
ON id_cards(status);

CREATE INDEX idx_id_cards_template
ON id_cards(card_template);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_id_cards_created_at
ON id_cards(created_at);