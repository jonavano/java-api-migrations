ALTER TABLE Films DROP CONSTRAINT fk_director_id;
ALTER TABLE Films DROP CONSTRAINT fk_writer_id;
ALTER TABLE Films DROP CONSTRAINT fk_star_id;

UPDATE Films f
SET director_id = p.id
FROM Directors d
Join Persons p on p.name = d.name
WHERE f.director_id = d.id;
--

UPDATE Films f
SET star_id = p.id
FROM Stars s
Join Persons p on p.name = s.name
WHERE f.star_id = s.id;

UPDATE Films f
SET writer_id = p.id
FROM Writers w
Join Persons p on p.name = w.name
WHERE f.writer_id = w.id;

--
--INSERT INTO Pers (name,email)
--SELECT w.name, w.email
--FROM writers w
--WHERE NOT EXISTS (
--    SELECT 1 FROM persons p WHERE p.name = w.name
--);
