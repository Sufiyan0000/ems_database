-- ======================================================
-- File       : id_cards.sql
-- Module     : Documents
-- Description: Stores generated ID cards
-- ======================================================

CREATE TABLE id_cards (

    card_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    owner_type ENUM(
        'Student',
        'Staff',
        'Parent'
    ) NOT NULL,

    owner_id VARCHAR(36) NOT NULL,

    card_number VARCHAR(50) NOT NULL,

    issue_date DATE NOT NULL,

    expiry_date DATE,

    version INT DEFAULT 1,

    qr_code VARCHAR(255),

    barcode VARCHAR(255),

    card_template VARCHAR(100) NOT NULL,

    printed_at DATETIME,

    printed_by VARCHAR(36),

    status ENUM(
        'Generated',
        'Printed',
        'Issued',
        'Expired',
        'Cancelled'
    ) NOT NULL DEFAULT 'Generated',

    remarks VARCHAR(255),

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);