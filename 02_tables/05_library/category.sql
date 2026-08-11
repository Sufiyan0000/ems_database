-- ======================================================
-- File       : book_categories.sql
-- Module     : Library
-- Description: Stores book categories in the library
-- ======================================================

CREATE TABLE book_categories (

    category_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    title VARCHAR(100) NOT NULL,

    description VARCHAR(255),

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);