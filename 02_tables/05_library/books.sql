-- ======================================================
-- File       : books.sql
-- Module     : Library
-- Description: Stores library books
-- ======================================================

CREATE TABLE books (

    book_id VARCHAR(36) PRIMARY KEY,

    school_id VARCHAR(36) NOT NULL,

    category_id VARCHAR(36) NOT NULL,

    title VARCHAR(255) NOT NULL,

    description TEXT,

    author VARCHAR(255) NOT NULL,

    isbn VARCHAR(20),

    publisher VARCHAR(255),

    total_copies INT NOT NULL,

    available_copies INT NOT NULL,

    status ENUM(
        'Available',
        'Inactive'
    ) NOT NULL DEFAULT 'Available',

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);