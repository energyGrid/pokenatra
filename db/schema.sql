DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  cp INT,
  poke_type VARCHAR,
  img_url TEXT
);

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  level VARCHAR,
  img_url TEXT
);
