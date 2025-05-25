CREATE DATABASE conservation_db;

CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    region VARCHAR(100) NOT NULL
);

SELECT * FROM rangers;

CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(200) NOT NULL,
    discovery_date DATE NOT NULL CHECK (
        discovery_date <= CURRENT_DATE
    ),
    conservation_status VARCHAR(50) NOT NULL
);

SELECT * FROM species;

CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT REFERENCES rangers (ranger_id) ON DELETE CASCADE,
    species_id INT REFERENCES species (species_id) ON DELETE CASCADE,
    sighting_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    location VARCHAR(200) NOT NULL,
    notes TEXT
);

SELECT * FROM sightings;