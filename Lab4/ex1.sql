IF NOT firme DROP TABLE firme;
IF NOT agenti DROP TABLE agenti;

CREATE TABLE firme (
	codfirma SMALLINT PRIMARY KEY,
	denfirma VARCHAR(20) NOT NULL,
	loc VARCHAR(20),
	zona VARCHAR(15) check (zona IN
	('Moldova','Ardeal','Banat','Muntenia','Dobrogea','Transilvania')) 
);

CREATE TABLE agenti (
	codagent VARCHAR(3) PRIMARY KEY
	numeagent VARCHAR(25) NOT NULL
	dataang DATE 	DEFAULT SYSDATE	
	functia	VARCHAR(20)	
	codfirma	NUMBER(2) NSTRAINT FK_agenti FOREIGN KEY (codfirma) REFERENCES firme(codfirma)
);