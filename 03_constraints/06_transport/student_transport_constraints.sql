-- ======================================================
-- File       : student_transport_constraints.sql
-- Module     : Transport
-- Description: Foreign key, unique and check constraints
--              for student_transport
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE student_transport
ADD CONSTRAINT fk_student_transport_student
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE student_transport
ADD CONSTRAINT fk_student_transport_vehicle
FOREIGN KEY (vehicle_id)
REFERENCES transport_vehicles(vehicle_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE student_transport
ADD CONSTRAINT fk_student_transport_academic_year
FOREIGN KEY (academic_year_id)
REFERENCES academic_years(academic_year_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE student_transport
ADD CONSTRAINT uq_student_transport_student_year
UNIQUE (
    student_id,
    academic_year_id
);

-- ======================================================
-- Check Constraints
-- ======================================================

-- No check constraints required.