CREATE TABLE detectorists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact_details TEXT
);

-- Insert sample data
INSERT INTO detectorists (name, contact_details) VALUES
('John Doe', 'Email: johndoe@example.com, Phone: 123-456-7890'),
('Jane Smith', 'Email: janesmith@example.com, Phone: 098-765-4321');

CREATE TABLE detected_items (
    id SERIAL PRIMARY KEY,
    type VARCHAR(255) NOT NULL,
    material VARCHAR(255),
    estimated_age VARCHAR(255),
    found_by INTEGER REFERENCES detectorists(id)
);

-- Insert sample data
INSERT INTO detected_items (type, material, estimated_age, found_by) VALUES
('Coin', 'Copper', 'Roman Era', 1),
('Jewelry', 'Gold', 'Medieval Era', 2);

CREATE TABLE detecting_sessions (
    id SERIAL PRIMARY KEY,
    session_date DATE NOT NULL,
    location TEXT NOT NULL,
    detectorist_id INTEGER REFERENCES detectorists(id)
);

-- Insert sample data
INSERT INTO detecting_sessions (session_date, location, detectorist_id) VALUES
('2023-01-15', 'Old Farm, Near Riverside', 1),
('2023-01-20', 'Beachside, Bay Area', 2);
