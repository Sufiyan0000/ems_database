-- ======================================================
-- File       : id_cards_constraints.sql
-- Module     : Documents
-- Description: Foreign key, unique and check constraints
--              for id_cards
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE id_cards
ADD CONSTRAINT fk_id_cards_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE id_cards
ADD CONSTRAINT uq_id_cards_card_number
UNIQUE (card_number);

ALTER TABLE id_cards
ADD CONSTRAINT uq_id_cards_qr_code
UNIQUE (qr_code);

ALTER TABLE id_cards
ADD CONSTRAINT uq_id_cards_barcode
UNIQUE (barcode);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE id_cards
ADD CONSTRAINT chk_id_cards_dates
CHECK (
    expiry_date IS NULL
    OR expiry_date >= issue_date
);

ALTER TABLE id_cards
ADD CONSTRAINT chk_id_cards_version
CHECK (
    version >= 1
);