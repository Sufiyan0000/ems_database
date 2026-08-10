-- ======================================================
-- File       : student_classes.sql
-- Module     : Academics
-- Description: Maps students to class, section and
--              academic year
-- ======================================================

CREATE TABLE student_classes (

    id VARCHAR(36) PRIMARY KEY,

    student_id VARCHAR(36) NOT NULL,

    class_id VARCHAR(36) NOT NULL,

    section_id VARCHAR(36) NOT NULL,

    academic_year_id VARCHAR(36) NOT NULL,

    roll_number INT NOT NULL,

    date_of_joining DATE NOT NULL,

    status VARCHAR(20) NOT NULL

);