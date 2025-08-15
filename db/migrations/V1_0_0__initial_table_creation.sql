CREATE TABLE IF NOT EXISTS Films(
	id SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	director TEXT,
	director_country TEXT,
	star TEXT,
	star_DOB TEXT,
	writer TEXT,
	writer_email TEXT,
	year INT,
	genre TEXT,
	score INT
);