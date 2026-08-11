-- ======================================================
-- File       : school_indexes.sql
-- Module     : School
-- Description: Indexes for school table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

-- None

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_school_name
ON school(name);

CREATE INDEX idx_school_city
ON school(city);

CREATE INDEX idx_school_state
ON school(state);

CREATE INDEX idx_school_status
ON school(status);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_school_created_at
ON school(created_at);