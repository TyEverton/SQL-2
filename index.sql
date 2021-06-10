-- create table eras (
--     era_id serial primary key, 
--     name varchar(75)
-- );

-- create table artists (
--     artist_id serial primary key, 
--     name varchar(100), 
--     era_id integer references eras(era_id)
-- );

-- create table artworks (
--     artwork_id serial primary key, 
--     name varchar(250), 
--     year integer, 
--     artist_id integer references artists(artist_id)
-- );

-- insert into eras (name) 
-- values ('Italian Renaissance'), 
-- ('Realism'), 
-- ('Impressionism'), 
-- ('Cubism'), 
-- ('Pop Art');

-- insert into artists (name, era_id) 
-- values ('da Vinci', 1),
-- ('Michelangelo', 1), 
-- ('Raphael', 1), 
-- ('Donatello', 1), 
-- ('Millet', 2), 
-- ('Whistler', 2), 
-- ('Monet', 3), 
-- ('Renoir', 3), 
-- ('Cassatt', 3), 
-- ('Picasso', 4), 
-- ('Braque', 4), 
-- ('Gleizes', 4), 
-- ('Warhol', 5), 
-- ('Lichtenstein', 5);

-- insert into artworks (name, year, artist_id) 
-- values ('Lady with an Ermine', 1490, 11),
-- ('Mona Lisa', 1504, 1),
-- ('The Last Supper', 1498, 1),
-- ('Statue of David', 1504, 2),
-- ('Sistine Chapel Ceiling', 1512, 2),
-- ('The Schools of Athens', 1512, 3),
-- ('Saint George and the Dragn', 1505, 3),
-- ('The Fire in the Borgo', 1514, 3),
-- ('Statue of St. George', 1415, 4),
-- ('The Gleaners', 1857, 5),
-- ('The Sower', 1850, 5),
-- ('The Sheepfold', 1860, 5),
-- ('Nocturne: Black and Gold - Old Battersea Bridge', 1875, 6),
-- ('Impression, Sunrise', 1874, 7),
-- ('Water Lillies', 1919, 7),
-- ('The Studio Boat', 1876, 7),
-- ('The Swing', 1876, 8),
-- ('Tea', 1881, 9),
-- ('Summertime', 1894, 9),
-- ('Lilacs in a Window', 1879, 9),
-- ('Young Mother Sewing', 1900, 9),
-- ('Woman with Mustard Pot', 1910, 10),
-- ('Girl with a Mandolin', 1910, 10),
-- ('The Poet', 1911, 10),
-- ('Fruit Dish', 1908, 11),
-- ('Man on a Balcony', 1912, 12),
-- ('Football Players', 1913, 12),
-- ('Campbells Soup', 1968, 13),
-- ('Whaam!', 1963, 14),
-- ('Girl in Mirror', 1964, 14),
-- ('Masterpiece', 4962, 14),
-- ('Look Mickey', 1961, 14);

-- SELECT * FROM;

-- UPDATE artworks (updating any info pushes the updated info to the bottom)
-- SET name = 'Saint George and the Dragon'WHERE artwork_id = 7;

-- SELECT * FROM artworks;

-- UPDATE artworks SET artist_id = 1 WHERE artwork_id = 1;

-- SELECT * FROM artworks;

-- UPDATE artworks SET year = 1962 WHERE artwork_id = 31;

-- SELECT * FROM artworks;

--JOINS / SUBQUERIES / VIEWS--

-- SELECT artists.name, eras.name FROM artists 
-- JOIN eras ON artists.era_id = eras.era_id;


-- SELECT artists.name, eras.name, artist_id FROM artists 
-- JOIN eras ON artists.era_id = eras.era_id; --THIS IS JOINING


-- SELECT a.name AS artist_name, e.name AS era_name FROM artists AS a
-- JOIN eras AS e ON a.era_id = e.era_id; --THIS IS ALIASING

--ARTWORK NAME, ARTWORK YEAR, ARTIST NAME--
-- SELECT aw.name, aw.year, ar.name FROM artists ar
-- JOIN artworks aw ON aw.artist_id = ar.artist_id;

--BELOW IS COLUMN ALIASING--
-- SELECT aw.name AS "ARTWORK NAME", aw.year AS "ARTWORK YEAR", ar.name AS "ARTIST NAME" FROM artworks aw
-- JOIN artists ar ON aw.artist_id = ar.artist_id --THIS IS COLUMN ALIASING--
-- WHERE aw.year > 1600 --THIS IS COLUMN ALIASING--
-- ORDER BY aw.year ASC; --THIS IS COLUMN ALIASING--

--GETTING INFO FROM 3 SEPARATE TABLES USING 
--NAME OF ERA, ARTIST NAME, ARTWORK NAME AND ARTWORK YEAR AND DISPLAY ALL--

--eras table: name, artworks table: name, year, artist table: artist name--

-- SELECT ar.name, aw.name, e.name, aw.year FROM artists ar 
-- JOIN eras e ON ar.era_id = e.era_id
-- JOIN artworks aw ON aw.artist_id = ar.artist_id;

--CREATE VIEW EXAMPLE--
-- CREATE VIEW artists_artwork AS (artists_artwork is the name of the view that we can reference)
-- SELECT ar.name "ARTIST NAME", aw.name "ARTWORK NAME", e.name "ERA NAME", aw.year "ARTWORK YEAR" FROM artists ar 
-- JOIN eras e ON ar.era_id = e.era_id
-- JOIN artworks aw ON aw.artist_id = ar.artist_id;

-- SELECT * FROM artists_artwork
-- WHERE artwork_name ILIKE '_a%'; (this will display all artwork names that have a as the second letter)

--DELETING RECORDS--
-- SELECT * FROM artists
-- WHERE artist_id = 7;

-- DELETE FROM artworks
-- WHERE artist_id = 7;(deleted all foreign key references from artworks, allowing us to delete artists)

-- DELETE FROM artists
-- WHERE artist_id = 7;

-- SELECT * FROM artists
-- ORDER BY artist_id ASC;