-- ======================================================
-- File       : 00_reset_database.sql
-- Description: Reset database for testing
-- WARNING    : Deletes the entire database
-- ======================================================

DROP DATABASE IF EXISTS school_management_system;

CREATE DATABASE school_management_system
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE school_management_system;