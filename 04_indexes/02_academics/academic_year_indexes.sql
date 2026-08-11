-- ======================================================
-- File       : academic_years_indexes.sql
-- Module     : Academics
-- Description: Indexes for academic_years table
-- ======================================================

CREATE INDEX idx_academic_years_school
ON academic_years(school_id);

CREATE INDEX idx_academic_years_status
ON academic_years(status);

CREATE INDEX idx_academic_years_start_date
ON academic_years(start_date);

CREATE INDEX idx_academic_years_end_date
ON academic_years(end_date);

CREATE INDEX idx_academic_years_created_at
ON academic_years(created_at);