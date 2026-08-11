-- ======================================================
-- File       : transport_vehicles_indexes.sql
-- Module     : Transport
-- Description: Indexes for transport_vehicles table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_transport_vehicles_school
ON transport_vehicles(school_id);

CREATE INDEX idx_transport_vehicles_route
ON transport_vehicles(route_id);

CREATE INDEX idx_transport_vehicles_driver
ON transport_vehicles(driver_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_transport_vehicles_status
ON transport_vehicles(status);

-- ======================================================
-- Composite Indexes
-- ======================================================

CREATE INDEX idx_transport_vehicles_route_status
ON transport_vehicles(route_id, status);

CREATE INDEX idx_transport_vehicles_school_status
ON transport_vehicles(school_id, status);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_transport_vehicles_created_at
ON transport_vehicles(created_at);