-- ======================================================
-- File       : routes_indexes.sql
-- Module     : Transport
-- Description: Indexes for routes table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_routes_school
ON routes(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_routes_name
ON routes(route_name);

CREATE INDEX idx_routes_status
ON routes(status);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_routes_created_at
ON routes(created_at);