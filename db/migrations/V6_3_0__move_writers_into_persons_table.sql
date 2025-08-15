UPDATE Persons p
SET email = w.email
FROM writers w
WHERE p.name = w.name;

INSERT INTO Persons (name,email)
SELECT w.name, w.email
FROM writers w
WHERE NOT EXISTS (
    SELECT 1 FROM persons p WHERE p.name = w.name
);