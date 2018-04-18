--	select * from ANGAJATI;
--	select NUME, PRENUME from ANGAJATI;
--	select NUME, PRENUME, SALARIUL from ANGAJATI;
--	select NUME, PRENUME, SALARIUL as sal from ANGAJATI;

-- select * from ANGAJATI where SALARIUL > 10000;

-- SELECT * FROM angajati where nume like 'M%' and SALARIUL < 10000;

-- SELECT * FROM angajati where ID_DEPARTAMENT = 100;

-- SELECT id_angajat, id_functie, data_angajare as 'lucreaza din' from angajati;

-- SELECT  id_functie FROM angajati;
-- SELECT DISTINCT id_functie FROM angajati;

-- SELECT * from angajati;

-- SELECT nume, data_angajare, id_functie FROM angajati WHERE nume = 'Taylor' OR  nume  = 'Matos'  ORDER BY data_angajare;


-- SELECT nume, data_angajare, id_functie FROM angajati WHERE nume IN ('Mantos', 'Taylor')  ORDER BY data_angajare;