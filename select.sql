1.Ce tipuri de fructe sunt in BD si cate sunt:
==============================================
SELECT nume_fruct "Numele fructului", COUNT(*) "Numar de fructe"
FROM fructe
GROUP BY nume_fruct
ORDER BY "Numar de fructe" DESC;

2.Informatii despre fructe:
===========================
SELECT nume_fruct "Nume fructului",
 NVL(mod_alegere, 'Modul de alegere nespecificat.') "Modul de a alege fructul", 
 mod_depozitare "Modul de a depozita fructul"
FROM tipuri_fruct
WHERE nume_fruct IN (SELECT nume_fruct FROM fructe)
ORDER BY nume_fruct ASC;

3.Tarile de provenienta a diferitelor fructe:
=============================================
SELECT f.nume_fruct "Nume fruct", f.nume_tara "Nume tara provenienta", COUNT(*) "Numar fructe din acea tara"
FROM fructe f, tari t
WHERE f.nume_tara=t.nume_tara
GROUP BY f.nume_fruct, f.nume_tara
ORDER BY f.nume_fruct, f.nume_tara;

4.Select-ul folosit la congelare:
=================================
SELECT id_fruct "ID", 
  nume_fruct "Tipul fructului",
  data_stricare-7 "Data stricare originala", 
  data_stricare "Data stricare noua"
FROM fructe
WHERE data_stricare > SYSDATE;

5.Informatii despre piete:
==========================
SELECT p.nume_piata "Nume piata", p.data_infiintare "Data Infiintarii", 
'Str. '||a.strada||', nr. '||a.numar||NVL2(a.sector, ', sector '||a.sector, '')||', '||o.nume_oras "Adresa", 
(SELECT COUNT(*) FROM vanzatori v WHERE v.id_piata=p.id_piata) "Numar de vanzatori",
(SELECT SUM(vz.incasari) FROM vanzari_zilnice vz, vanzatori v 
WHERE vz.id_vanzator=v.id_vanzator AND v.id_piata=p.id_piata) "Incasari totale(RON)"
FROM piete p, adrese a, orase o
WHERE p.id_adresa=a.id_adresa AND a.id_oras=o.id_oras;

6.Informatii despre vanzatori:
==============================
SELECT v.nume_vanzator||' '||v.prenume_vanzator "Nume complet", v.telefon "Nr. telefon", NVL(v.email, 'Nespecificat') "E-mail", 
NVL(p.nume_piata, 'Independent') "Numele piata", 
(SELECT SUM(incasari) FROM vanzari_zilnice WHERE id_vanzator=v.id_vanzator) "Total incasari(RON)", 
(SELECT COUNT(*) FROM comenzi WHERE id_vanzator=v.id_vanzator) "Numar comenzi", 
DECODE( (SELECT COUNT(*) FROM angajatii_lunii WHERE id_vanzator=v.id_vanzator), 0, 'Necastigator', 'Castigator') "Angajatul lunii"
FROM vanzatori v
LEFT JOIN piete p ON v.id_piata=p.id_piata
ORDER BY "Nume complet";

7.Informatii despre comenzi:
============================
SELECT c.id_comanda "ID", c.pret "Pretul", c.data_efectuare "Facuta in", c.data_livrare "Livrata in", 
v.nume_vanzator||' '||v.prenume_vanzator "Facuta de", f.nume_furnizor "La furninizorul", 
c.info_aditionale "Detalii comanda"
FROM comenzi c, vanzatori v, furnizori f
WHERE c.id_vanzator=v.id_vanzator AND c.id_furnizor=f.id_furnizor
ORDER BY c.data_efectuare;

8.Fructele dintr-o anumită comandă:
===================================
SELECT f.id_fruct "ID", f.nume_fruct "Nume fruct", f.greutate "Greutate(g)", f.data_stricare "Data stricare"
FROM fructe f, fructe_comanda fc
WHERE f.id_fruct=fc.id_fruct AND fc.id_comanda=1
ORDER BY f.id_fruct ASC;

9.Greutatile comenzilor:
========================
SELECT c.id_comanda "ID", v.nume_vanzator||' '||v.prenume_vanzator "Nume", c.pret "Pret comanda(RON)", 
(SELECT  SUM(f.greutate) FROM fructe f, fructe_comanda fc WHERE f.id_fruct=fc.id_fruct AND fc.id_comanda=c.id_comanda) "Greutate comanda(g)"
FROM comenzi c, vanzatori v
WHERE c.id_vanzator=v.id_vanzator
ORDER BY "Greutate comanda(g)" ASC;

10.Top vanzatori:
=================
SELECT v.nume_vanzator "Nume", v.prenume_vanzator "Prenume", NVL(p.nume_piata, 'Independent') "Numele piata", 
       (SELECT SUM(incasari) FROM vanzari_zilnice WHERE id_vanzator=v.id_vanzator AND TO_CHAR(data, 'MON-YYYY') LIKE 'APR-2014') "Incasari(RON)", 
       (SELECT SUM(pret) FROM comenzi WHERE id_vanzator=v.id_vanzator AND TO_CHAR(data_livrare, 'MON-YYYY') LIKE 'APR-2014') "Cheltuieli(RON)"
FROM vanzatori v
LEFT JOIN piete p ON v.id_piata=p.id_piata
ORDER BY "Incasari(RON)"-"Cheltuieli(RON)" DESC;

11.Extragere angajatul lunii(1):
================================
SELECT * FROM (SELECT v.nume_vanzator||' '||v.prenume_vanzator "Nume complet castigator",  v.id_vanzator "ID", p.nume_piata "Piata", 
				(SELECT SUM(incasari) FROM vanzari_zilnice WHERE id_vanzator=v.id_vanzator AND TO_CHAR(data, 'MON-YYYY') LIKE 'APR-2014') "Incasari(RON)", 
				(SELECT SUM(pret) FROM comenzi WHERE id_vanzator=v.id_vanzator AND TO_CHAR(data_livrare, 'MON-YYYY') LIKE 'APR-2014') "Cheltuieli(RON)"
				FROM vanzatori v, piete p
				WHERE v.id_piata=1 AND p.id_piata=1
				ORDER BY "Incasari(RON)"-"Cheltuieli(RON)" DESC)
WHERE ROWNUM=1;

12.Extragere angajatul lunii(2):
================================
SELECT * FROM (SELECT v.nume_vanzator||' '||v.prenume_vanzator "Nume complet castigator",  v.id_vanzator "ID", p.nume_piata "Piata", 
						(SELECT SUM(incasari) FROM vanzari_zilnice WHERE id_vanzator=v.id_vanzator AND TO_CHAR(data, 'MON-YYYY') LIKE 'APR-2014') "Incasari(RON)", 
						(SELECT SUM(pret) FROM comenzi WHERE id_vanzator=v.id_vanzator AND TO_CHAR(data_livrare, 'MON-YYYY') LIKE 'APR-2014') "Cheltuieli(RON)"
				FROM vanzatori v, piete p
				WHERE v.id_piata=2 AND p.id_piata=2
				ORDER BY "Incasari(RON)"-"Cheltuieli(RON)" DESC)
WHERE ROWNUM=1;

13.Greutatile fructelor:
========================
SELECT nume_fruct "Numele fructului", MAX(greutate) "Greutate maxima(g)", CAST(AVG(greutate) AS NUMBER(6,2)) "Greutate medie(g)", MIN(greutate) "Greutate minima(g)"
FROM fructe
GROUP BY nume_fruct
ORDER BY nume_fruct ASC;

14.Fructe irosite:
==================
SELECT f.id_fruct "ID", f.nume_fruct "Nume fruct", f.data_stricare "Data stricare", v.nume_vanzator||' '||v.prenume_vanzator "Vanzator"
FROM fructe f, vanzatori v
WHERE 	f.data_stricare < SYSDATE AND
		v.id_vanzator=(SELECT c.id_vanzator FROM comenzi c WHERE f.id_fruct IN (SELECT id_fruct FROM fructe_comanda WHERE id_comanda=c.id_comanda)) AND
		f.id_fruct NOT IN (SELECT id_fruct FROM fructe_vandute);
		
15.Valori nutritive pentru un anumit fruct:
===========================================
SELECT vn.nume "Nume valoare nutritiva", NVL(vn.descriere, 'Fara descriere') "Descriere"
FROM valori_nutritive vn, lista_valori l
WHERE l.id_valoare=vn.id_valoare AND l.nume_fruct='kiwi';

16.Numar de fructe pentru valorile nutritive:
=============================================
SELECT vn.nume "Valoare nutritiva", 
   (SELECT COUNT(*) FROM fructe f, lista_valori l WHERE
f.nume_fruct=l.nume_fruct AND l.id_valoare=vn.id_valoare) "Numar fructe"
FROM valori_nutritive vn;

17.Informatii despre furnizori:
===============================
SELECT f.id_furnizor "ID", f.nume_furnizor "Nume furnizor", tf.descriere "Tip furnizor", 
  'Str. '||a.strada||', nr. '||a.numar||NVL2(a.sector, ', sector '||a.sector, '')||', '||o.nume_oras "Adresa", 
       (SELECT COUNT(*) FROM comenzi WHERE id_furnizor=f.id_furnizor) "Numar de comenzi", 
       (SELECT SUM(pret) FROM comenzi WHERE id_furnizor=f.id_furnizor) "Incasari totale(RON)"
FROM furnizori f, tipuri_furnizori tf, adrese a, orase o
WHERE f.id_tip=tf.id_tip AND f.id_adresa=a.id_adresa AND a.id_oras=o.id_oras
ORDER BY "Incasari totale(RON)" DESC;
