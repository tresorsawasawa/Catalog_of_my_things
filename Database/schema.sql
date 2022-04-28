-- 1. Create "catalog_of_my_things" database
CREATE DATABASE catalog_of_my_things;

-- 2. Create "Items" table
CREATE TABLE Items(
  id INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
  publish_date DATE,
  archived BOOLEAN
);

-- 3. Create "music_album" table
CREATE TABLE genres (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(100),
  PRIMARY KEY(id)
);

-- 4. Update "Items" table after creating "genres" table
ALTER TABLE Items ADD CO genre_id INT REFERENCES genres(id)
ALTER TABLE Items
ADD COLUMN genre_id genre_id INT REFERENCES genres(id) constraint;

-- 5. Create "music_album" table
CREATE TABLE music_album (
  on_spotify BOOLEAN
)INHERITS(items);

-- 6. Update "music_album" table
ALTER TABLE music_album ADD CONSTRAINT music_albums_id PRIMARY KEY (id);

