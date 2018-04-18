
CREATE TABLE produse (
  id_produs INT PRIMARY KEY,
  denumire_produs VARCHAR(250),
  descriere VARCHAR(2000),
  categorie VARCHAR(40),
  pret_lista INT,
  pret_min INT
);

CREATE TABLE rand_comenzi (
  nr_comanda INT,
  id_produs INT,
  pret INT,
  cantitate INT,
  PRIMARY KEY (nr_comanda, id_produs),
  FOREIGN KEY (id_produs) REFERENCES produse(id_produs)
);

CREATE TABLE comenzi (
  nr_comanda INT ,
  data TIMESTAMP(6),
  modalitate VARCHAR(8),
  FOREIGN KEY (id_client) REFERENCES clienti(id_client),
  stare_comanda INT,
  FOREIGN KEY (id_angajat) REFERENCES angajati(id_angajat),
  PRIMARY KEY (nr_comanda, data, id_client)
);

CREATE TABLE clienti (
  id_client NUMBER(6),
  prenume_client VARCHAR(20),
  nume_client VARCHAR(20),
  telefon VARCHAR(20),
  limita_credit NUMBER(9,2),
  email_client VARCHAR(20),
  data_nastere DATE,
  starea_civila VARCHAR(20),
  sex VARCHAR(1),
  nivel_venituri VARCHAR(20)
  PRIMARY KEY (id_client, prenume_client, nume_client)
);

CREATE TABLE angajati (
  id_angajat NUMBER(6),
  prenume VARCHAR(20),
  nume VARCHAR(25),
  email VARCHAR(25),
  telefon VARCHAR(20),
  data_angajare DATE,
  id_functie VARCHAR(10),
  salariul NUMBER(8, 2),
  comision NUMBER(8, 2),
  id_manager NUMBER(6),
  id_departament NUMBER(4),
  PRIMARY KEY (id_angajat, nume, email, data_angajare, id_functie)
);

CREATE TABLE departamente (
  id_departament NUMBER(4),
  denumire_departamente VARCHAR(30),
  id_manager NUMBER(6),
  FOREIGN KEY (id_locatie) REFERENCES locatii(id_localitate), 
  PRIMARY KEY (id_departament, denumire_departamente)
);

CREATE TABLE locatii (
  id_localitate NUMBER(4),
  adresa VARCHAR(40),
  cod_postal VARCHAR(12),
  oras VARCHAR(30),
  zona VARCHAR(25),
  FOREIGN KEY (id_tara) REFERENCES tari(id_tara),
  PRIMARY KEY (id_localitate, oras)
);

CREATE TABLE tari (
  id_tara CHAR(2) PRIMARY KEY,
  denumire_tara VARCHAR(40),
  FOREIGN KEY (id_regiune) REFERENCES regiuni(id_regiune),
)

CREATE TABLE regiuni (
  id_regiune NUMBER PRIMARY KEY,
  denumire_regiune VARCHAR(25)
);

CREATE TABLE functii (
  id_functie VARCHAR(10),
  denumire_funct VARCHAR(35),
  salariu_min NUMBER(6),
  salariu_max NUmber(6),
  PRIMARY KEY (id_functie, denumire_funct)
)

CREATE TABLE istoric_functii (
  id_angajat NUMBER(6),
  data_inceput DATE,
  data_sfarsit DATE,
  FOREIGN KEY (id_functie) references functii(),
  id_departament NUMBER(4),
  PRIMARY KEY (id_angajat, data_inceput, data_sfarsit, id_functie)
)

