-- ======================================================
-- File       : assignment_submissions_constraints.sql
-- Module     : Academics
-- Description: Foreign key, unique and check constraints
--              for assignment_submissions
-- ======================================================

-- ======================================================
-- Foreign Keys
-- ======================================================

ALTER TABLE assignment_submissions
ADD CONSTRAINT fk_assignment_submissions_assignment
FOREIGN KEY (assignment_id)
REFERENCES assignments(id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE assignment_submissions
ADD CONSTRAINT fk_assignment_submissions_student
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- ======================================================
-- Unique Constraints
-- ======================================================

ALTER TABLE assignment_submissions
ADD CONSTRAINT uq_assignment_submissions_assignment_student
UNIQUE (
    assignment_id,
    student_id
);

-- ======================================================
-- Check Constraints
-- ======================================================

ALTER TABLE assignment_submissions
ADD CONSTRAINT chk_assignment_submissions_marks
CHECK (
    marks_obtained IS NULL
    OR marks_obtained >= 0
);

ALTER TABLE assignment_submissions
ADD CONSTRAINT chk_assignment_submissions_submission_date
CHECK (
    submission_date <= CURRENT_TIMESTAMP
);