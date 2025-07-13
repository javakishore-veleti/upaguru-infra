CREATE SCHEMA IF NOT EXISTS upaguru_mind;

CREATE TABLE upaguru_mind.embedding_record (
                                               id TEXT PRIMARY KEY,
                                               source_type TEXT,
                                               source_id TEXT,
                                               embedding TEXT,       -- Changed
                                               metadata TEXT,        -- Changed
                                               text TEXT,
                                               created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



