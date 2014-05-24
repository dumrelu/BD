1.Fructe:
=========
CREATE TABLE fructe (
	id_fruct NUMBER(6) CONSTRAINT pk_fructe PRIMARY KEY, 
	greutate NUMBER(6, 2) NOT NULL, 
	data_stricare DATE NOT NULL, 
	nume_fruct VARCHAR2(30) NOT NULL, 
	nume_tara VARCHAR2(30) NOT NULL
);

2.Tipuri Fruct:
===============
CREATE TABLE tipuri_fruct(
	nume_fruct VARCHAR2(30) CONSTRAINT pk_tipuri_fruct PRIMARY KEY, 
	mod_depozitare VARCHAR2(100) NOT NULL, 
	mod_alegere VARCHAR2(50)
);

3.Valori Nutritive:
===================
CREATE TABLE valori_nutritive(
	id_valoare NUMBER(3) CONSTRAINT pk_val_nutritive PRIMARY KEY, 
	nume VARCHAR2(30) NOT NULL, 
	descriere VARCHAR2(75)
);

4.Tari:
=======
CREATE TABLE tari(
	nume_tara VARCHAR2(30) CONSTRAINT pk_tari PRIMARY KEY, 
	capitala VARCHAR2(30) NOT NULL, 
	descriere VARCHAR2(100)
);

5.Piete:
========
CREATE TABLE piete(
	id_piata NUMBER(3) CONSTRAINT pk_piete PRIMARY KEY, 
	nume_piata VARCHAR2(50) NOT NULL, 
	data_infiintare DATE NOT NULL, 
	id_adresa NUMBER(4) NOT NULL
);

6.Adrese:
=========
CREATE TABLE adrese(
	id_adresa NUMBER(4) CONSTRAINT pk_adrese PRIMARY KEY, 
	strada VARCHAR2(40) NOT NULL, 
	numar NUMBER(3) NOT NULL, 
	cod_postal CHAR(6) NOT NULL, 
	sector NUMBER(1), 
	indicatii_supl VARCHAR2(100), 
	id_oras NUMBER(4) NOT NULL, 
	CONSTRAINT ck_sector
CHECK(sector BETWEEN 1 AND 6)
);

7.Orase:
========
CREATE TABLE orase(
	id_oras NUMBER(4) CONSTRAINT pk_orase PRIMARY KEY, 
	nume_oras VARCHAR2(40) NOT NULL, 
	descriere VARCHAR2(100)
);

8.Vanzatori:
============
CREATE TABLE vanzatori(
	id_vanzator NUMBER(3) CONSTRAINT pk_vanzatori PRIMARY KEY, 
	nume_vanzator VARCHAR2(30) NOT NULL, 
	prenume_vanzator VARCHAR2(30) NOT NULL, 
	telefon VARCHAR2(10) NOT NULL, 
	email VARCHAR2(30), 
	id_piata NUMBER(3)
);

9.Angajatii Lunii:
==================
CREATE TABLE angajatii_lunii(
	data_premiu DATE , 
id_vanzator NUMBER(3), 
	premiu NUMBER(4) NOT NULL, 
	imagine BLOB, 
	aditionale VARCHAR2(100), 
CONSTRAINT pk_angajatii_lunii PRIMARY KEY(data_premiu, id_vanzator)
);

10.Vanzari zilnice:
===================
CREATE TABLE vanzari_zilnice(
	id_vanzare NUMBER(5) CONSTRAINT pk_vanzari_zilnice PRIMARY KEY, 
	data DATE DEFAULT sysdate NOT NULL, 
	incasari NUMBER(5, 2) NOT NULL, 
id_vanzator NUMBER(3) NOT NULL
);

11.Furnizori:
=============
CREATE TABLE furnizori(
id_furnizor NUMBER(3) CONSTRAINT pk_furnizori PRIMARY KEY, 
nume_furnizor VARCHAR2(50) NOT NULL, 
id_tip NUMBER(2) NOT NULL, 
id_adresa NUMBER(4) NOT NULL
);

12.Tipuri furnizori:
====================
CREATE TABLE tipuri_furnizori(
id_tip NUMBER(2) CONSTRAINT pk_tipuri_furnizori PRIMARY KEY, 
descriere VARCHAR2(50) NOT NULL
);

13.Comenzi:
===========
CREATE TABLE comenzi(
	id_comanda NUMBER(6) CONSTRAINT pk_comenzi PRIMARY KEY, 
	pret NUMBER(10, 2) NOT NULL, 
	data_efectuare DATE DEFAULT sysdate NOT NULL, 
	data_livrare DATE NOT NULL, 
	info_aditionale VARCHAR2(100), 
	id_vanzator NUMBER(3) NOT NULL, 
	id_furnizor NUMBER(3) NOT NULL
);

14.Lista Valori:
================
CREATE TABLE lista_valori(
	nume_fruct VARCHAR2(30), 
	id_valoare NUMBER(3), 
	CONSTRAINT pk_lista_valori PRIMARY KEY (nume_fruct, id_valoare), 
	CONSTRAINT fk_nume_fruct FOREIGN KEY (nume_fruct) REFERENCES tipuri_fruct(nume_fruct), 
	CONSTRAINT fk_id_valoare FOREIGN KEY (id_valoare) REFERENCES valori_nutritive(id_valoare)
);

15.Fructe Vandute:
==================
CREATE TABLE fructe_vandute(
	id_fruct NUMBER(6), 
	id_vanzare NUMBER(5), 
	CONSTRAINT pk_fructe_vandute PRIMARY KEY (id_fruct, id_vanzare), 
	CONSTRAINT fk_id_fruct FOREIGN KEY (id_fruct) REFERENCES fructe(id_fruct), 
	CONSTRAINT fk_id_vanzare FOREIGN KEY (id_vanzare) REFERENCES vanzari_zilnice(id_vanzare)
);

16.Fructe Comanda:
==================
CREATE TABLE fructe_comanda(
	id_comanda NUMBER(6), 
	id_fruct NUMBER(6), 
	CONSTRAINT pk_fructe_comanda PRIMARY KEY (id_comanda, id_fruct), 
	CONSTRAINT fk_id_comanda FOREIGN KEY (id_comanda) REFERENCES comenzi(id_comanda), 
	CONSTRAINT fk_id_fruct2 FOREIGN KEY (id_fruct) REFERENCES fructe(id_fruct)
);

