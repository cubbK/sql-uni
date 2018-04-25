SELECT nume, prenume from angajati where salariu > 12000;

select nume. nr_dep from angajat where id = 176;

select nume, salariu from angajati where salariu not between 5000 and 12000;

select nume, departament from salariati where id_departament in (20, 50)
order by nume;

select nume, salariu from angajati 
where salariu not between 5000 and 12000 and id_departament in (20, 50);

select nume, functia, date from angajati 
where date BETWEEN #07/04/1996# AND #07/09/1996#;

select nume, date from angajati where date like "1994";

select nume, date from angajati where  YEAR(date) = 1994;

select nume, functia from angajati where manager is null;

select nume, salariu, comision from salariati where comision is not null 
order by salariu, comision desc;

select nume, salariu, comision from salariati
order by salariu, comision desc;

select nume from angajati where nume like '%a%' and ume like '%e%';

select nume from angajati where nume like '__A%';

select nume from angajati where nume like '%L%L%' and departament = 30 or manager_id = 101;


