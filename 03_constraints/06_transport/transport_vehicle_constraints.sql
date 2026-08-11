-- ======================================================
-- File       : transport_vehicles_constraints.sql
-- Module     : Transport
-- Description: Foreign key, unique and check constraints
--              for transport_vehicles
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE transport_vehicles
ADD CONSTRAINT fk_transport_vehicle_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE transport_vehicles
ADD CONSTRAINT fk_transport_vehicle_route
FOREIGN KEY (route_id)
REFERENCES routes(route_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE transport_vehicles
ADD CONSTRAINT fk_transport_vehicle_driver
FOREIGN KEY (driver_id)
REFERENCES drivers(driver_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE transport_vehicles
ADD CONSTRAINT uq_transport_vehicle_school_vehicle_no
UNIQUE (
    school_id,
    vehicle_no
);

-- ======================================================
-- Check Constraints
-- ======================================================

-- Already exists in CREATE TABLE
-- CHECK (capacity > 0)