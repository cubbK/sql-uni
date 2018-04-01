CREATE TABLE firme (
	codfirma SMALLINT PRIMARY KEY,
	denfirma VARCHAR(20) NOT NULL,
	loc VARCHAR(20),
	zona VARCHAR(15) CONSTRAINT FZONA_CH check (zona IN
	('Moldova','Ardeal','Banat','Muntenia','Dobrogea','Transilvania')) 
)