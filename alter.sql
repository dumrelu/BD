1.Cheie externa catre nume_fruct:
=================================
ALTER TABLE fructe 
ADD CONSTRAINT fk_nume_fruct1 FOREIGN KEY (nume_fruct) REFERENCES tipuri_fruct(nume_fruct);

2.Cheie externa catre nume_tara:
================================
ALTER TABLE fructe 
ADD CONSTRAINT fk_nume_tara FOREIGN KEY (nume_tara) REFERENCES tari(nume_tara);

3.Cheie externa catre id_adresa:
================================
ALTER TABLE piete
ADD CONSTRAINT fk_adrese1 FOREIGN KEY (id_adresa) REFERENCES adrese(id_adresa);

4.Cheie externa catre id_oras:
==============================
ALTER TABLE adrese
ADD CONSTRAINT fk_oras FOREIGN KEY (id_oras) REFERENCES orase(id_oras);

5.Cheie externa catre id_piata:
===============================
ALTER TABLE vanzatori
ADD CONSTRAINT fk_piata FOREIGN KEY (id_piata) REFERENCES piete(id_piata);

6.Cheie externa catre id_vanzator:
==================================
ALTER TABLE angajatii_lunii
ADD CONSTRAINT fk_vanzator1 FOREIGN KEY (id_vanzator) REFERENCES vanzatori(id_vanzator);

7.Cheie externa catre id_vanzator:
==================================
ALTER TABLE vanzari_zilnice
ADD CONSTRAINT fk_vanzator2 FOREIGN KEY (id_vanzator) REFERENCES vanzatori(id_vanzator);

8.Cheie externa catre id_tip:
=============================
ALTER TABLE furnizori
ADD CONSTRAINT fk_tip_furnizor FOREIGN KEY (id_tip) REFERENCES tipuri_furnizori(id_tip);

9.Cheie externa catre id_adresa:
================================
ALTER TABLE furnizori
ADD CONSTRAINT fk_adrese2 FOREIGN KEY (id_adresa) REFERENCES adrese(id_adresa);

10. Cheie externa catre către id_vanzator:
====================================
ALTER TABLE comenzi
ADD CONSTRAINT fk_vanzator3 FOREIGN KEY (id_vanzator) REFERENCES vanzatori(id_vanzator);

11.Cheie externa catre id_furnizor:
===================================
ALTER TABLE comenzi
ADD CONSTRAINT fk_furnizor FOREIGN KEY (id_furnizor) REFERENCES furnizori(id_furnizor);
