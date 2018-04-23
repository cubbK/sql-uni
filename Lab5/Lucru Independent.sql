create table UNIVERSITATE (
	UNIV_ID int(5) primary key, 
	UNIV_DEN varchar(50) not null,
	RATING int(6) not null,
	ORAS varchar(20) not null
)

create table PROFESOR (
	PR_ID int(5) primary key, 
	NUME varchar(20) not null,
	PRENUME varchar(20) not null,
	ORAS varchar(20),
	UNIV_ID int(5),
	foreign key (UNIV_ID) references UNIVERSITATE (UNIV_ID)	 
)

create table CURS (
	CURS_ID int(5) primary key, 
	CURS_DEN varchar(40) not null,
	ORE int(4) not null,
	SEMESTRU int(2) 
)

create table CURS_PROF (
	PR_ID int(5),
	foreign key (PR_ID) references PROFESOR (PR_ID), 
	CURS_ID int(5),
	foreign key (CURS_ID) references CURS (CURS_ID)
)

create table STUDENT (
	ST_ID int(10) primary key, 
	NUME varchar(20) not null,
	PRENUME varchar(20) not null,
	BURSA int(5) null,
	ANUL int(2),
	ORAS varchar(20),
	DATA_N date,
	UNIV_ID int(5),
	foreign key (UNIV_ID) references UNIVERSITATE (UNIV_ID)	 
)

create table NOTE_EXAM (
	ID_EXAM int(5) primary key,
	ST_ID int(5),
	foreign key (ST_ID) references STUDENT (ST_ID), 
	CURS_ID int(5),
	foreign key (CURS_ID) references CURS (CURS_ID),
	NOTA int(2) null,
	DATA_EXAM date
)

insert into universitate (UNIV_ID, UNIV_DEN, RATING, ORAS)
values
	(22, 'USM', 606, 'Chisinau'),
	(10, 'USB', 296, 'Balti'),
	(11, 'ULIM', 345, 'Chisinau'),
	(32, 'USC', 416, 'Cahul'),
	(14, 'USD', 326, 'Drochia'),
	(15, 'USC', 368, 'Chisinau'),
	(18, 'BGMA', 327, 'Balti');
	
insert into profesor (pr_id, nume, prenume, oras, univ_id) values
	(24, 'Iordachi', 'Boris', 'Balti', 10),
	(46, 'Nuca', 'Ion', 'Balti', 10),
	(74, 'Lasescu', 'Pavel', 'Chisinau', 22),
	(108, 'Stanescu', 'Nicolai', 'Chisinau', 22),
	(276, 'Negrescu', 'Victor', 'Balti', 10),
	(328, 'Sorescu', 'Andrei', 'Orhei', 10)
	
insert into student (st_id, nume, prenume, bursa, anul, oras, data_n, univ_id)
values
	(6, 'Sima', 'Vadim', 150, 4, 'Chisinau', '1979-06-07', 22),
	(10, 'Osman', 'Nicolai', 0, 2, 'Briceni', '1981-12-01', 10),
	(12, 'Casta', 'Olga', 250, 2, 'Lipcani', '1981-05-01',10),
	(265, 'Mantes', 'Andrei', null, 3, 'Balti', '1979-11-05', 10),
	(32, 'Colesnic', 'Petru', 150, 5, 'Drochia', null, 14),
	(654,'Luca', 'Artur', 200, 3, 'Balti', '1981-12-01', 10),
	(276,'Petrescu', 'Elena', 200, 4, null, '1981-08-05', 22),
	(55, 'Banescu', 'Vlad', 250, 5, 'Balti', '1980-01-07', 10)

insert into curs (curs_id, curs_den, ore, semestru)
values
	(10, 'Informatica', 56, 1),
	(22, 'Fizica', 34,1),
	(43, 'Matematica', 56, 2),
	(56, 'Istoria', 34, 4),
	(94, 'Limba Engleza', 56, 3),
	(73, 'Educatia fizica', 34, 5)
	
insert into note_exam (id_exam, st_id, curs_id, nota, data_exam) values
	(145, 12,10, 10, '2000-01-12'),
	(34,32, 10, 9, '2000-01-23'),
	(75, 55, 10, 9, '2000-01-05'),
	(238, 12, 22, 6, '1999-06-22'),
	(639, 55, 22, null, '1999-06-22'),
	(43, 6, 22, 5, '2000-01-18')
insert into curs_prof (pr_id, curs_id) values
	(24, 10),
	(46, 22),
	(74, 43),
	(108, 56),
	(276, 94),
	(328, 73)*/


 create index anStudii on student(anul)


 create index dataExam on note_exam(data_exam)


insert into curs (curs_id, curs_den, ore, semestru)
values (201, 'Algebra', 72, 4)


insert into student (st_id, nume, prenume, bursa, anul, oras, data_n, univ_id)
values (800, 'Osman', 'Nicolai', null, 1, 'Balti', null,10)


delete from note_exam 
where st_id=100

update universitate set rating = rating+5
where oras = 'Cahul'

CREATE TABLE STUDENTI
  AS (SELECT *
      FROM student WHERE 1=2);


INSERT INTO studenti
SELECT * FROM student
WHERE oras = 'Chisinau';


INSERT INTO studenti
SELECT * FROM student
WHERE st_id = (select st_id
					from note_exam
					where (nota >= 5)
					group by st_id
					having count(st_id)>=5
	)
	




where curs_id = (
	select curs_id 
	from note_exam
	where nota=null
	having count(st_id)=0) 



update student set bursa = bursa+bursa*0.2
where st_id = (
					select st_id from note_exam
					having sum(nota)>=50
)


select * from student


select distinct oras from student

select nume, prenume from student where nume = 'Petrov'


select * from student
where (anul=3) and (bursa is not null)


select curs_id, curs_den, semestru, ore from curs

select * from note_exam where curs_id=12

select anul, prenume, nume, bursa from student

select curs_den, ore from curs where semestru=4


select distinct nota, st_id from note_exam


select nume from student where anul >=3


select nume, prenume, anul from student where bursa >140


select * from curs where ore>=30


select * from universitate where rating >300


select nume, prenume, anul from student
where (bursa>=100 and oras = 'Balti')

select nume, prenume from student
inner join note_exam on student.st_id= note_exam.st_id				
where nota in (9, 10)



select * from curs where (ore between 30 and 40)

select nume from student where nume like 'P%'

-- 34
select curs_id from note_exam 
where (data_exam between '2000-01-10' and '2000-01-20')

-- 35
select distinct curs_id
from note_exam
where st_id in (12, 32)


select curs_den from curs
where curs_den like 'I%'


select curs_den from curs
where (curs_den like 'I%') or (curs_den like 'C%')


select * from note_exam
where nota is null

-- 39
select * from note_exam
where nota is not null

-- 40
select concat(st_id,';',nume,';',prenume,'; ',bursa,'; ',anul,'; ',oras,'; ',data_n,';',univ_id,'.')
as 'id nume prenume bursa anul oras data_n univ_id'
from student
where st_id =10

-- 41
select concat(upper(substring(prenume, 1, 1)),'.',upper(nume),'; ','localitatea- ',oras,'; ','nascut la ',date_format(data_n, '%d.%c.%Y'),'.')
as 'id nume prenume bursa anul oras data_n univ_id'
from student
where st_id =10

-- 42
select concat(lower(substring(prenume, 1, 1)),'.',lower(nume),'; ','localitatea- ',oras,'; ','nascut la ',date_format(data_n, '%d-%b-%Y'),'.')
as 'id nume prenume bursa anul oras data_n univ_id'
from student
where st_id =10


-- 43
select concat(nume,'s-a nascut in anul ',date_format(data_n, '%Y'),'.')
as 'id nume prenume bursa anul oras data_n univ_id'
from student
where st_id =10

-- 44
select concat(nume,'s-a nascut in anul ',date_format(data_n, '%Y'),'.')
as 'id nume prenume bursa anul oras data_n univ_id'
from student
where anul in (1, 2, 4)

-- 45
select nume, prenume, bursa, bursa*100 as 'Bursa_marita' from student
where bursa is not null

-- 46
select concat('Cod -', univ_id,'; ', univ_den,'- ', 'or.', oras,'; ', 'Reiting-',rating,'.') as Universitati
from universitate


-- 47
select concat('Cod -', univ_id,'; ', univ_den,'- ', 'or.', oras,'; ', 'Reiting-', round(rating, -2),'.') as Universitati
from universitate

-- 48
select avg(nota) as 'media'
from note_exam 

-- 49
select count(st_id) as 'Nr studenti'
from student

-- 50 
select student.st_id, student.nume, student.prenume, max(nota)as Nota_max
from student
inner join note_exam on student.st_id=note_exam.st_id 


-- 51
select count(st_id) as 'Nr_st'
from note_exam
where curs_id =22

-- 52
select count(distinct curs_id) as 'NR cursuri diferite'from note_exam

-- 53
select st_id, min(nota) as 'Nota minima'
from note_exam

-- 54
select  nume from student
where nume like 'I%'
order by nume
limit 1


-- 62
select st_id, nume, prenume, ((bursa*0.2)+bursa) as 'Bursa marita'
from student
order by bursa, nume

-- 64
select semestru, curs_den, curs_id
from curs
order by semestru desc, ore asc

-- 67
select nota
from note_exam
where st_id = (select st_id
					from student
					where nume like ('Casta'))


-- 68
select student.nume, student.prenume
from student
inner join note_exam on student.st_id = note_exam.st_id
where curs_id =10

-- 70
select count(curs_id) as 'numarul de cursuri'
from note_exam
WHERE st_id = (select st_id
					from note_exam
					where (nota >= 5)
					group by st_id
					having count(st_id)>=2
					)


-- 71
select st_id, nume
from student
where oras='Balti'
having max(bursa)

-- 72
select st_id, nume
from student
inner join universitate on universitate.univ_id = student.univ_id
where student.oras != universitate.oras

-- 73
select st_id, nume
from student
inner join universitate on universitate.univ_id = student.univ_id
where student.oras = universitate.oras
-- 74
select student.st_id, student.nume, student.prenume
from student
inner join note_exam on student.st_id= note_exam.st_id
where nota < 5
-- having count(nota)>=1

-- 75
select curs_id 
from note_exam 
where nota>=5
having row_count(curs_id)>1


select nume, prenume
from student
inner join universitate on student.univ_id= universitate.univ_id
where universitate.rating>300*/


select student.st_id, nume, student.oras, universitate.oras, student.univ_id
from student
inner join universitate on universitate.univ_id = student.univ_id
where (student.oras = universitate.oras and student.univ_id != universitate.univ_id)


-- 79
select curs_den
from curs
inner join note_exam on curs.curs_id= note_exam.curs_id
where note_exam.nota is null


-- 80
select student.st_id, student.nume, student.prenume, student.oras, student.univ_id
from student
inner join universitate on universitate.univ_id = student.univ_id
where (student.oras = universitate.oras)

-- 84
select student.st_id, student.nume, student.prenume, student.oras, student.univ_id
from student
inner join universitate on universitate.univ_id = student.univ_id
where (student.oras = universitate.oras and student.univ_id != universitate.univ_id)

-- 90
select curs.curs_den, student.nume, student.prenume
from student
inner join note_exam on student.st_id = note_exam.St_id
inner join curs on note_exam.curs_id= curs.curs_id
where note_exam.nota in(8, 9, 10)

-- 95
select  concat(univ_den, ' ') as 'UNIversitate oras'
from universitate
where oras = 'Balti'



select univ_den, oras from universitate
where rating >=(
	select rating from universitate
	where (oras = 'Balti') and (univ_id =10)
)
