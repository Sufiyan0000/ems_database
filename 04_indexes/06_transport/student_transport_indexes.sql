-- ======================================================
-- File       : student_transport_indexes.sql
-- Module     : Transport
-- Description: Indexes for student_transport table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_student_transport_student
ON student_transport(student_id);

CREATE INDEX idx_student_transport_vehicle
ON student_transport(vehicle_id);

CREATE INDEX idx_student_transport_route
ON student_transport(route_id);

CREATE INDEX idx_student_transport_academic_year
ON student_transport(academic_year_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_student_transport_status
ON student_transport(status);

-- ======================================================
-- Composite Indexes
-- ======================================================

CREATE INDEX idx_student_transport_student_year
ON student_transport(student_id, academic_year_id);

CREATE INDEX idx_student_transport_route_status
ON student_transport(route_id, status);

CREATE INDEX idx_student_transport_vehicle_status
ON student_transport(vehicle_id, status);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_student_transport_created_at
ON student_transport(created_at);