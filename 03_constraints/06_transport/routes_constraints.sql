-- ======================================================
-- File       : routes_constraints.sql
-- Module     : Transport
-- Description: Foreign key, unique and check constraints
--              for routes
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE routes
ADD CONSTRAINT fk_routes_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE routes
ADD CONSTRAINT uq_routes_school_route_name
UNIQUE (
    school_id,
    route_name
);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE routes
ADD CONSTRAINT chk_routes_distance
CHECK (
    distance_km IS NULL
    OR distance_km >= 0
);

ALTER TABLE routes
ADD CONSTRAINT chk_routes_duration
CHECK (
    estimated_duration IS NULL
    OR estimated_duration > 0
);