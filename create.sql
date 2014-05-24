1.Fructe:
=========
CREATE TABLE fructe (
	id_fruct NUMBER(6) CONSTRAINT pk_fructe PRIMARY KEY, 
	greutate NUMBER(6, 2) NOT NULL, 
	data_stricare DATE NOT NULL, 
	nume_fruct VARCHAR2(30) NOT NULL, 
	nume_tara VARCHAR2(30) NOT NULL
);
