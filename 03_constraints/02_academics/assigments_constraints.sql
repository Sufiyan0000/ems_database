-- ======================================================
-- File        : assignments_constraints.sql
-- Module      : Academics
-- Description : Foreign key and additional constraints for assignments
-- ======================================================

-- Foreign Keys
ALTER TABLE assignments
ADD CONSTRAINT fk_assignments_teacher
FOREIGN KEY (teacher_id)
REFERENCES teachers(teacher_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE assignments
ADD CONSTRAINT fk_assignments_academic_year
FOREIGN KEY (academic_year_id)
REFERENCES academic_years(academic_year_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE assignments
ADD CONSTRAINT fk_assignments_subject
FOREIGN KEY (subject_id)
REFERENCES subjects(subject_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE assignments
ADD CONSTRAINT fk_assignments_class
FOREIGN KEY (class_id)
REFERENCES classes(class_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE assignments
ADD CONSTRAINT fk_assignments_section
FOREIGN KEY (section_id)
REFERENCES sections(section_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- Unique Constraint
ALTER TABLE assignments
ADD CONSTRAINT uq_assignments_unique
UNIQUE (
    teacher_id,
    subject_id,
    class_id,
    section_id,
    title,
    due_date
);

-- Status Column
ALTER TABLE assignments
ADD COLUMN status ENUM(
    'Draft',
    'Published',
    'Closed',
    'Archived'
) NOT NULL DEFAULT 'Published';