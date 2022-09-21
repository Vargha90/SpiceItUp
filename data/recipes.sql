DROP TABLE IF EXISTS recipes;
DROP TABLE IF EXISTS users;

CREATE TABLE recipes (
	id	SERIAL PRIMARY KEY	NOT NULL,
	name	TEXT	UNIQUE	NOT NULL,
	ingredients	VARCHAR		NOT NULL,
	recipe	VARCHAR			NOT NULL,
	category	TEXT,
	subcategory	TEXT,
	submission_time TIMESTAMP	NOT NULL,
	user_id	VARCHAR		NOT NULL
);

CREATE TABLE users (
	id	SERIAL PRIMARY KEY	NOT NULL,
	username	VARCHAR(100)	UNIQUE	NOT NULL,
	hashed_password	VARCHAR,
	registration_time	TIMESTAMP,
	recipe_id	INT
);
