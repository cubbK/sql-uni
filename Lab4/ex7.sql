CREATE TABLE salariati LIKE angajati;

INSERT INTO salariati
VALUES (152, 'Andrei', 'manager', 852);

INSERT INTO salariati
SELECT * FROM angajati
WHERE departament IN (20, 30, 50);

