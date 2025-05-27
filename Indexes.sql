CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    role TEXT,
    tags TEXT[],
    created_at DATE
);


INSERT INTO users (name, email, role, tags, created_at) VALUES
('Alice', 'alice@example.com', 'admin', ARRAY['tech'], '2024-01-31'),
('Bob', 'bob@example.com', 'user', ARRAY['sports', 'tech'], '2024-02-29'),
('Charlie', 'charlie@example.com', 'user', ARRAY['music'], '2024-03-31'),
('David', 'david@example.com', 'moderator', ARRAY['tech'], '2024-04-30'),
('Eve', 'eve@example.com', 'user', ARRAY['sports'], '2024-05-31'),
('Frank', 'frank@example.com', 'admin', ARRAY['tech', 'music'], '2024-06-30'),
('Grace', 'grace@example.com', 'user', ARRAY['music'], '2024-07-31'),
('Hannah', 'hannah@example.com', 'moderator', ARRAY['sports'], '2024-08-31'),
('Ian', 'ian@example.com', 'user', ARRAY['tech'], '2024-09-30'),
('Jane', 'jane@example.com', 'admin', ARRAY['music'], '2024-10-31');


CREATE INDEX idx_email ON users(email);
SELECT * FROM users WHERE email='hannah@example.com'

CREATE INDEX idx_role ON users (role);
SELECT * FROM users WHERE role='admin'

CREATE INDEX idx_name_hash ON users USING HASH (name)
SELECT * FROM users WHERE name ='Bob'

CREATE INDEX idx_tags_gin ON users USING GIN(tags);
SELECT * FROM users WHERE tags @> ARRAY['tech'];

CREATE INDEX idx_name_gist ON users USING GIST(name gist_trgm_ops);
SELECT * FROM users WHERE name ='David'

CREATE EXTENSION IF NOT EXISTS pg_trgm;




SELECT * FROM users WHERE name % 'David';

