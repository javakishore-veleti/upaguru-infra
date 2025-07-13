-- Create schema if needed (optional)
CREATE SCHEMA IF NOT EXISTS upaguru_mind;

-- Create table
CREATE TABLE IF NOT EXISTS upaguru_mind.embedding_record (
                                                             id TEXT PRIMARY KEY,
                                                             source_type TEXT,
                                                             source_id TEXT,
                                                             embedding JSONB,
                                                             metadata JSONB,
                                                             text TEXT,
                                                             created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_embedding_record_metadata
    ON upaguru_mind.embedding_record USING gin (metadata);