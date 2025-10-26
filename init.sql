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

INSERT INTO players (name, points) VALUES
('Evgeni Malkin', 14),
('Mark Stone', 13),
('Dylan Larkin', 13),
('Nathan MacKinnon', 13),
('Nick Suzuki', 13),
('David Pastrnak', 13),
('Macklin Celebrini', 12);