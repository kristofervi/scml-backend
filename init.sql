DROP TABLE IF EXISTS players;

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    points INTEGER NOT NULL
);

INSERT INTO players (name, points) VALUES
('Jack Eichel', 16),
('Nick Schmaltz', 15),
('William Nylander', 14);