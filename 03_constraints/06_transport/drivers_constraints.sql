-- ======================================================
-- File       : drivers_constraints.sql
-- Module     : Transport
-- Description: Foreign key, unique and check constraints
--              for drivers
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE drivers
ADD CONSTRAINT fk_drivers_school
FOREIGN KEY (school_id)
REFERENCES school(school_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE drivers
ADD CONSTRAINT uq_drivers_school_phone
UNIQUE (
    school_id,
    phone
);

ALTER TABLE drivers
ADD CONSTRAINT uq_drivers_school_license
UNIQUE (
    school_id,
    license_number
);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE drivers
ADD CONSTRAINT chk_drivers_license_expiry
CHECK (
    license_expiry >= CURRENT_DATE
);