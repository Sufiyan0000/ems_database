-- ======================================================
-- File       : student_parents_constraints.sql
-- Module     : People
-- Description: Foreign key, unique and check constraints
--              for student_parents
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE student_parents
ADD CONSTRAINT fk_student_parents_student
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE student_parents
ADD CONSTRAINT fk_student_parents_parent
FOREIGN KEY (parent_id)
REFERENCES parents(parent_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE student_parents
ADD CONSTRAINT uq_student_parent_relationship
UNIQUE (
    student_id,
    parent_id,
    relationship
);