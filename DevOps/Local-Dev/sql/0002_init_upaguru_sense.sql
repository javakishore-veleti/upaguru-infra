-- Create schema if it doesn't exist
CREATE SCHEMA IF NOT EXISTS upaguru_sense;

CREATE TABLE IF NOT EXISTS upaguru_sense.prompt_session_log (
                                                                id UUID PRIMARY KEY,
                                                                user_id VARCHAR(64),
                                                                input_type VARCHAR(50), -- e.g., "lesson-plan", "feedback", "summarize"
                                                                persona VARCHAR(100),
                                                                model_used VARCHAR(50),
                                                                prompt_template TEXT,
                                                                model_input TEXT,
                                                                model_output TEXT,
                                                                token_usage INT,
                                                                latency_ms INT,
                                                                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS upaguru_sense.feedback_analysis_result (
                                                                      id UUID PRIMARY KEY,
                                                                      raw_feedback TEXT,
                                                                      sentiment_score FLOAT,
                                                                      dominant_topics TEXT, -- JSON array or comma-separated
                                                                      named_entities TEXT,  -- optional: JSON or string
                                                                      analyzed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS upaguru_sense.curriculum_insights (
                                                                 id UUID PRIMARY KEY,
                                                                 source TEXT,
                                                                 extracted_topics TEXT,
                                                                 grade_level VARCHAR(20),
                                                                 insights JSONB,
                                                                 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
