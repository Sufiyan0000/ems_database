-- ======================================================
-- File       : documents_indexes.sql
-- Module     : Documents
-- Description: Indexes for documents table
-- ======================================================

-- ======================================================
-- Foreign Key Indexes
-- ======================================================

CREATE INDEX idx_documents_school
ON documents(school_id);

-- ======================================================
-- Search & Lookup Indexes
-- ======================================================

CREATE INDEX idx_documents_owner
ON documents(document_owner_type, document_owner_id);

CREATE INDEX idx_documents_type
ON documents(document_type);

CREATE INDEX idx_documents_verification_status
ON documents(verification_status);

CREATE INDEX idx_documents_uploaded_by
ON documents(uploaded_by_type, uploaded_by_id);

CREATE INDEX idx_documents_uploaded_at
ON documents(uploaded_at);

-- ======================================================
-- Reporting Indexes
-- ======================================================

CREATE INDEX idx_documents_created_at
ON documents(created_at);