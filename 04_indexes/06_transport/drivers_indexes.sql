-- ======================================================
-- File       : drivers_indexes.sql
-- Module     : Transport
-- Description: Indexes for drivers table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_drivers_school
ON drivers(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_drivers_name
ON drivers(first_name, last_name);

CREATE INDEX idx_drivers_status
ON drivers(status);

CREATE INDEX idx_drivers_license_number
ON drivers(license_number);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_drivers_created_at
ON drivers(created_at);