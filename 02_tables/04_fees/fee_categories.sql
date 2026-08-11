-- ======================================================
-- File       : fee_categories.sql
-- Module     : Fees
-- Description: Stores different fee categories
--              available in a school
-- ======================================================

CREATE TABLE fee_categories (

    fee_category_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    category_name VARCHAR(100) NOT NULL,

    description VARCHAR(255),

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);