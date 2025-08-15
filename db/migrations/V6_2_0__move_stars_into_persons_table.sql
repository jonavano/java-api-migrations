UPDATE Persons p
SET date_of_birth = s.date_of_birth
FROM stars s
WHERE p.name = s.name;

INSERT INTO Persons (name,date_of_birth)
SELECT s.name, s.date_of_birth
FROM stars s
WHERE NOT EXISTS (
    SELECT 1 FROM persons p WHERE p.name = s.name
);