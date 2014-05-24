1.Tipuri de fructe:
====================
INSERT INTO tipuri_fruct VALUES ('mere', 'Se tin in frigider pana la 7 zile. Pentru o depozitare pe termen mai lung se baga la congelator.', NULL);
INSERT INTO tipuri_fruct VALUES ('para', 'Pana la 5 zile in frigider.', NULL);
INSERT INTO tipuri_fruct VALUES ('kiwi', 'In sertarul de jos al frigiderului timp de 3-5 zile.', 'Daca este foarte moale, este prea copt.');
INSERT INTO tipuri_fruct VALUES ('portocala', 'La temperatura camerei, dar daca sunt tinute in frigider, rezista si pana la 3 saptamani.', NULL);
INSERT INTO tipuri_fruct VALUES ('ananas', '2 zile la temperatura camerei, 3-5 zile in frigider', 'Should have green, fresh-looking leaves.');

2.Valori nutritive:
===================
INSERT INTO valori_nutritive VALUES(1, 'Fara grasimi', 'Nu contine grasimi');
INSERT INTO valori_nutritive VALUES(2, 'Fara grasimi saturate', 'Nu contine grasimi saturate');
INSERT INTO valori_nutritive VALUES(3, 'Fara sodiu', 'Nu contine sodiu');
INSERT INTO valori_nutritive VALUES(4, 'Fara colesterol', NULL);
INSERT INTO valori_nutritive VALUES(5, 'Vitamina C', 'Sursa buna de vitamina C');
INSERT INTO valori_nutritive VALUES(6, 'Putine grasimi', NULL);
INSERT INTO valori_nutritive VALUES(7, 'Potasiu', 'Sursa buna de potasiu');
INSERT INTO valori_nutritive VALUES(8, 'Vitamina E', 'Sursa buna de vitamina E');

3.Lista valori nutritive:
=========================
Mere:
INSERT INTO lista_valori VALUES('mere', 1); INSERT INTO lista_valori VALUES('mere', 2);
INSERT INTO lista_valori VALUES('mere', 3); INSERT INTO lista_valori VALUES('mere', 4);

Pere:
INSERT INTO lista_valori VALUES('para', 1); INSERT INTO lista_valori VALUES('para', 2);
INSERT INTO lista_valori VALUES('para', 3); INSERT INTO lista_valori VALUES('para', 5);

Kiwi:
INSERT INTO lista_valori VALUES('kiwi', 6); INSERT INTO lista_valori VALUES('kiwi', 2);
INSERT INTO lista_valori VALUES('kiwi', 3); INSERT INTO lista_valori VALUES('kiwi', 4);
INSERT INTO lista_valori VALUES('kiwi', 5); INSERT INTO lista_valori VALUES('kiwi', 7);
INSERT INTO lista_valori VALUES('kiwi', 8);

Portocale:
INSERT INTO lista_valori VALUES('portocala', 1); INSERT INTO lista_valori VALUES('portocala', 2);
INSERT INTO lista_valori VALUES('portocala', 5);

Ananas:
INSERT INTO lista_valori VALUES('ananas', 1); INSERT INTO lista_valori VALUES('ananas', 2);
INSERT INTO lista_valori VALUES('ananas', 4); INSERT INTO lista_valori VALUES('ananas', 5);

4.Tari:
=======
INSERT INTO tari VALUES('Romania', 'Bucuresti', 'Clima temperat continentala de tranzitie.');
INSERT INTO tari VALUES('Moldova', 'Chisinau', 'Clima moderat-continentala.');
INSERT INTO tari VALUES('Germania', 'Berlin', 'Clima temperata, cu o temperatura medie anuala de 9 °C.');
INSERT INTO tari VALUES('Jamaica', 'Kingston', 'Clima tropicala.');
INSERT INTO tari VALUES('Brazilia', 'Brasilia', 'Clima tropicala.');
INSERT INTO tari VALUES('Italia', 'Roma', 'Clima variabila.');
INSERT INTO tari VALUES('Costa Rica', 'San Jose', 'Clima tropicala.');

5.Piete:
========
Piata 1 Decembrie:
INSERT INTO orase VALUES(1, 'Bucuresti', 'Capitala Romaniei');
INSERT INTO adrese VALUES(1, 'Colonel Iosif Albu', 1, '000001', 3, NULL, 1);
INSERT INTO piete VALUES(1, 'Piata 1 Decembrie', TO_DATE('01-JUN-1999', 'DD-MON-YYYY'), 1);

Piata Trapezului:
INSERT INTO adrese VALUES(2, 'Trapezului', 1, '000010', 3, NULL, 1);
INSERT INTO piete VALUES(2, 'Piata Trapezului', TO_DATE('05-FEB-2001', 'DD-MON-YYYY'), 2);

6.Vanzatori:
============
Vânzătorii din Piața 1 Decembrie(//TODO): 
INSERT INTO vanzatori VALUES(1, 'Ion', 'Ion', '0722344321', 'ion@ion.ro', 1);
INSERT INTO vanzatori VALUES(2, 'Rotaznav', 'Alexandru', '0722694396', 'alex_rotaznav@vanzatori.ro', 1);

Vânzătorii din Piața Trapezului(//TODO): 
INSERT INTO vanzatori VALUES(3, 'Badic', 'Theodor-Alexandru', '0743295683', NULL, 2);
INSERT INTO vanzatori VALUES(4, 'Ivan', 'Andrei-Laurentiu', '0766934567', NULL, 2);

Vânzător independent:
INSERT INTO vanzatori VALUES(5, 'Independescu', 'Bogdan', '0724816518', 'bindependescu@emailfals.ro', NULL);

7.Furnizori:
============
Furnizorii care vor fi inserați sunt de 2 tipuri: cultivatori și importatori.
1. INSERT INTO tipuri_furnizori VALUES(1, 'Cultivator de fructe');
2. INSERT INTO tipuri_furnizori VALUES(2, 'Importator');

1. Mere SRL
INSERT INTO orase VALUES(2, 'Cluj', NULL);
INSERT INTO adrese VALUES(3, 'Independentei', 3, '000011', NULL, NULL, 2);
INSERT INTO furnizori VALUES(1, 'Mere SRL', 1, 3);
2. Livezi SRL
INSERT INTO orase VALUES(3, 'Craiova', NULL);
INSERT INTO adrese VALUES(4, 'Toamnei', 2, '000100', NULL, NULL, 3);
INSERT INTO furnizori VALUES(2, 'Livezi SRL', 1, 4);
3. Fructe importate SRL
INSERT INTO adrese VALUES(5, '1 Mai', 2, '000101', 1, NULL, 1);
INSERT INTO furnizori VALUES(3, 'Fructe importate SRL', 2, 5);
4. Rotatropmi S.A.
INSERT INTO adrese VALUES(6, 'Simetriei', 1, '000111', 3, NULL, 1);
INSERT INTO furnizori VALUES(4, 'Rotatropmi S.A.', 2, 6);

8.Comenzi:
==========
Adaugare fructe:
  Ion Ion
Comanda 1
INSERT INTO fructe VALUES(1, 151, TO_DATE('25-APR-2014', 'DD-MON-YYYY'), 'mere', 'Romania');
INSERT INTO fructe VALUES(2, 163, TO_DATE('25-APR-2014', 'DD-MON-YYYY'), 'mere', 'Romania');
INSERT INTO fructe VALUES(3, 163, TO_DATE('26-APR-2014', 'DD-MON-YYYY'), 'mere', 'Romania');
INSERT INTO fructe VALUES(4, 144, TO_DATE('24-APR-2014', 'DD-MON-YYYY'), 'mere', 'Romania');
INSERT INTO fructe VALUES(5, 154, TO_DATE('25-APR-2014', 'DD-MON-YYYY'), 'mere', 'Romania');

Comanda 2
INSERT INTO fructe VALUES(6, 168, TO_DATE('15-APR-2014', 'DD-MON-YYYY'), 'para', 'Moldova');
INSERT INTO fructe VALUES(7, 170, TO_DATE('15-APR-2014', 'DD-MON-YYYY'), 'para', 'Moldova');
INSERT INTO fructe VALUES(8, 173, TO_DATE('16-APR-2014', 'DD-MON-YYYY'), 'para', 'Moldova');

Comanda 3
INSERT INTO fructe VALUES(36, 177.15, TO_DATE('24-MAY-2014', 'DD-MON-YYYY'), 'mere', 'Romania');
INSERT INTO fructe VALUES(37, 167.17, TO_DATE('24-MAY-2014', 'DD-MON-YYYY'), 'mere', 'Romania');
INSERT INTO fructe VALUES(38, 166, TO_DATE('21-MAY-2014', 'DD-MON-YYYY'), 'mere', 'Romania');
INSERT INTO fructe VALUES(39, 171, TO_DATE('21-MAY-2014', 'DD-MON-YYYY'), 'mere', 'Romania');
INSERT INTO fructe VALUES(40, 159.99, TO_DATE('24-MAY-2014', 'DD-MON-YYYY'), 'mere', 'Romania');

	Rotaznav Alexandru
Comanda 1
INSERT INTO fructe VALUES(9, 182, TO_DATE('28-APR-2014', 'DD-MON-YYYY'), 'portocala', 'Brazilia');
INSERT INTO fructe VALUES(10, 183, TO_DATE('28-APR-2014', 'DD-MON-YYYY'), 'portocala', 'Brazilia');
INSERT INTO fructe VALUES(11, 177.99, TO_DATE('29-APR-2014', 'DD-MON-YYYY'), 'portocala', 'Brazilia');
INSERT INTO fructe VALUES(12, 190.2, TO_DATE('29-APR-2014', 'DD-MON-YYYY'), 'portocala', 'Brazilia');
INSERT INTO fructe VALUES(13, 177.1, TO_DATE('28-APR-2014', 'DD-MON-YYYY'), 'portocala', 'Brazilia');

Comanda 2
INSERT INTO fructe VALUES(14, 1560.2, TO_DATE('22-APR-2014', 'DD-MON-YYYY'), 'ananas', 'Costa Rica');

	Badic
Comanda 1
INSERT INTO fructe VALUES(15, 50, TO_DATE('20-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Italia');
INSERT INTO fructe VALUES(16, 51.1, TO_DATE('20-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Italia');
INSERT INTO fructe VALUES(17, 50.2, TO_DATE('20-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Italia');
INSERT INTO fructe VALUES(18, 70.70, TO_DATE('20-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Italia');
INSERT INTO fructe VALUES(19, 43.3, TO_DATE('21-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Italia');
INSERT INTO fructe VALUES(20, 66, TO_DATE('21-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Italia');
INSERT INTO fructe VALUES(21, 59.1, TO_DATE('21-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Italia');
INSERT INTO fructe VALUES(22, 55.5, TO_DATE('21-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Italia');
INSERT INTO fructe VALUES(23, 53.12, TO_DATE('22-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Italia');
INSERT INTO fructe VALUES(24, 54.1, TO_DATE('22-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Italia');

	Ivan
Comanda 1
INSERT INTO fructe VALUES(25, 150.1, TO_DATE('20-APR-2014', 'DD-MON-YYYY'), 'mere', 'Moldova');
INSERT INTO fructe VALUES(26, 152.1, TO_DATE('20-APR-2014', 'DD-MON-YYYY'), 'mere', 'Moldova');
INSERT INTO fructe VALUES(27, 183.44, TO_DATE('20-APR-2014', 'DD-MON-YYYY'), 'mere', 'Moldova');

Comanda 2
INSERT INTO fructe VALUES(28, 180.2, TO_DATE('16-APR-2014', 'DD-MON-YYYY'), 'para', 'Germania');	
INSERT INTO fructe VALUES(29, 182, TO_DATE('16-APR-2014', 'DD-MON-YYYY'), 'para', 'Germania');
INSERT INTO fructe VALUES(30, 177, TO_DATE('17-APR-2014', 'DD-MON-YYYY'), 'para', 'Germania');

Comanda 3
INSERT INTO fructe VALUES(31, 66.6, TO_DATE('22-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Jamaica');
INSERT INTO fructe VALUES(32, 65.44, TO_DATE('22-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Jamaica');
INSERT INTO fructe VALUES(33, 70.21, TO_DATE('22-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Jamaica');
INSERT INTO fructe VALUES(34, 71.1, TO_DATE('23-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Jamaica');
INSERT INTO fructe VALUES(35, 50.5, TO_DATE('21-APR-2014', 'DD-MON-YYYY'), 'kiwi', 'Jamaica');

	Independescu
Comanda 1
INSERT INTO fructe VALUES(41, 149.99, TO_DATE('19-APR-2014', 'DD-MON-YYYY'), 'mere', 'Moldova');
INSERT INTO fructe VALUES(42, 159.59, TO_DATE('19-APR-2014', 'DD-MON-YYYY'), 'mere', 'Moldova');
INSERT INTO fructe VALUES(43, 169.69, TO_DATE('18-APR-2014', 'DD-MON-YYYY'), 'mere', 'Moldova');
INSERT INTO fructe VALUES(44, 170, TO_DATE('18-APR-2014', 'DD-MON-YYYY'), 'mere', 'Moldova');
INSERT INTO fructe VALUES(45, 145, TO_DATE('18-APR-2014', 'DD-MON-YYYY'), 'mere', 'Moldova');



Creare comandă:
	Ion Ion
INSERT INTO comenzi VALUES(1, 3, TO_DATE('01-APR-2014', 'DD-MON-YYYY'), TO_DATE('07-APR-2014', 'DD-MON-YYYY'), 'Comanda mere proaspete', 1, 1);
INSERT INTO comenzi VALUES(2, 5, TO_DATE('06-APR-2014', 'DD-MON-YYYY'), TO_DATE('08-APR-2014', 'DD-MON-YYYY'), 'Comanda pere proaspete', 1, 2);
INSERT INTO comenzi VALUES(9, 4, TO_DATE('01-MAY-2014', 'DD-MON-YYYY'), TO_DATE('02-MAY-2014', 'DD-MON-YYYY'), 'Comanda mere', 1, 1);
	Rotaznav
INSERT INTO comenzi VALUES(3, 8, TO_DATE('01-APR-2014', 'DD-MON-YYYY'), TO_DATE('06-APR-2014', 'DD-MON-YYYY'), 'Comanda portocale importate', 2, 3);
INSERT INTO comenzi VALUES(4, 20, TO_DATE('15-APR-2014', 'DD-MON-YYYY'), TO_DATE('17-APR-2014', 'DD-MON-YYYY'), 'Comanda ananas', 2, 4);
	Badic
INSERT INTO comenzi VALUES(5, 10, TO_DATE('13-APR-2014', 'DD-MON-YYYY'), TO_DATE('15-APR-2014', 'DD-MON-YYYY'), 'Comanda kiwifruit', 3, 4);
	Ivan
INSERT INTO comenzi VALUES(6, 5, TO_DATE('04-APR-2014', 'DD-MON-YYYY'), TO_DATE('07-APR-2014', 'DD-MON-YYYY'), 'Comanda mere', 4, 2);
INSERT INTO comenzi VALUES(7, 6, TO_DATE('06-APR-2014', 'DD-MON-YYYY'), TO_DATE('08-APR-2014', 'DD-MON-YYYY'), 'Comanda pere proaspete', 4, 3);
INSERT INTO comenzi VALUES(8, 7, TO_DATE('13-APR-2014', 'DD-MON-YYYY'), TO_DATE('15-APR-2014', 'DD-MON-YYYY'), 'Comanda pere proaspete', 4, 3);
	Independescu
INSERT INTO comenzi VALUES(10, 5, TO_DATE('08-APR-2014', 'DD-MON-YYYY'), TO_DATE('09-APR-2014', 'DD-MON-YYYY'), 'Comanda pere', 5, 2);
	


Adaugare fructe in listă:
	Ion Ion
Comanda 1
INSERT INTO fructe_comanda VALUES(1, 1);
INSERT INTO fructe_comanda VALUES(1, 2);
INSERT INTO fructe_comanda VALUES(1, 3);
INSERT INTO fructe_comanda VALUES(1, 4);
INSERT INTO fructe_comanda VALUES(1, 5);

Comanda 2
INSERT INTO fructe_comanda VALUES(2, 6);
INSERT INTO fructe_comanda VALUES(2, 7);
INSERT INTO fructe_comanda VALUES(2, 8);

Comanda 3
INSERT INTO fructe_comanda VALUES(9, 36);
INSERT INTO fructe_comanda VALUES(9, 37);
INSERT INTO fructe_comanda VALUES(9, 38);
INSERT INTO fructe_comanda VALUES(9, 39);
INSERT INTO fructe_comanda VALUES(9, 40);

	Rotaznav Alexandru
Comanda 1
INSERT INTO fructe_comanda VALUES(3, 9);
INSERT INTO fructe_comanda VALUES(3, 10);
INSERT INTO fructe_comanda VALUES(3, 11);
INSERT INTO fructe_comanda VALUES(3, 12);
INSERT INTO fructe_comanda VALUES(3, 13);

Comanda 2
INSERT INTO fructe_comanda VALUES(4, 14);

	Badic
INSERT INTO fructe_comanda VALUES(5, 15);
INSERT INTO fructe_comanda VALUES(5, 16);
INSERT INTO fructe_comanda VALUES(5, 17);
INSERT INTO fructe_comanda VALUES(5, 18);
INSERT INTO fructe_comanda VALUES(5, 19);
INSERT INTO fructe_comanda VALUES(5, 20);
INSERT INTO fructe_comanda VALUES(5, 21);
INSERT INTO fructe_comanda VALUES(5, 22);
INSERT INTO fructe_comanda VALUES(5, 23);
INSERT INTO fructe_comanda VALUES(5, 24);

	Ivan
Comanda 1
INSERT INTO fructe_comanda VALUES(6, 25);
INSERT INTO fructe_comanda VALUES(6, 26);
INSERT INTO fructe_comanda VALUES(6, 27);

Comanda 2
INSERT INTO fructe_comanda VALUES(7, 28);
INSERT INTO fructe_comanda VALUES(7, 29);
INSERT INTO fructe_comanda VALUES(7, 30);

Comanda 3
INSERT INTO fructe_comanda VALUES(8, 31);
INSERT INTO fructe_comanda VALUES(8, 32);
INSERT INTO fructe_comanda VALUES(8, 33);
INSERT INTO fructe_comanda VALUES(8, 34);
INSERT INTO fructe_comanda VALUES(8, 35);

	Independescu
Comanda 1
INSERT INTO fructe_comanda VALUES(10, 41);
INSERT INTO fructe_comanda VALUES(10, 42);
INSERT INTO fructe_comanda VALUES(10, 43);
INSERT INTO fructe_comanda VALUES(10, 44);
INSERT INTO fructe_comanda VALUES(10, 45);

9.Vanzari zilnice:
==================
	ION
Vanzare 1
INSERT INTO vanzari_zilnice VALUES(1, TO_DATE('11-APR-2014', 'DD-MON-YYYY'), 3.95, 1);
INSERT INTO fructe_vandute VALUES(1, 1);
INSERT INTO fructe_vandute VALUES(2, 1);
INSERT INTO fructe_vandute VALUES(3, 1);
INSERT INTO fructe_vandute VALUES(6, 1);

Vanzare 2
INSERT INTO vanzari_zilnice VALUES(2, TO_DATE('14-APR-2014', 'DD-MON-YYYY'), 5.65, 1);
INSERT INTO fructe_vandute VALUES(4, 2);
INSERT INTO fructe_vandute VALUES(7, 2);
INSERT INTO fructe_vandute VALUES(8, 2);

Vanzare 3
INSERT INTO vanzari_zilnice VALUES(10, TO_DATE('20-APR-2014', 'DD-MON-YYYY'), 3, 1);
INSERT INTO fructe_vandute VALUES(37, 10);
INSERT INTO fructe_vandute VALUES(39, 10);

	Rotaznav Alexandru
Vanzare 1
INSERT INTO vanzari_zilnice VALUES(3, TO_DATE('7-APR-2014', 'DD-MON-YYYY'), 3.2, 2);
INSERT INTO fructe_vandute VALUES(9, 3);
INSERT INTO fructe_vandute VALUES(10, 3);

//Vanzare 2
INSERT INTO vanzari_zilnice VALUES(4, TO_DATE('15-APR-2014', 'DD-MON-YYYY'), 4.8, 2);
INSERT INTO fructe_vandute VALUES(11, 4);
INSERT INTO fructe_vandute VALUES(12, 4);
INSERT INTO fructe_vandute VALUES(13, 4);

Vanzare 3
INSERT INTO vanzari_zilnice VALUES(5, TO_DATE('19-APR-2014', 'DD-MON-YYYY'), 22.99, 2);
INSERT INTO fructe_vandute VALUES(14, 5);

	Badic
Vanzare 1
INSERT INTO vanzari_zilnice VALUES(6, TO_DATE('16-APR-2014', 'DD-MON-YYYY'), 13.23, 3);
INSERT INTO fructe_vandute VALUES(15, 6);
INSERT INTO fructe_vandute VALUES(16, 6);
INSERT INTO fructe_vandute VALUES(17, 6);
INSERT INTO fructe_vandute VALUES(18, 6);
INSERT INTO fructe_vandute VALUES(19, 6);
INSERT INTO fructe_vandute VALUES(20, 6);
INSERT INTO fructe_vandute VALUES(21, 6);
INSERT INTO fructe_vandute VALUES(22, 6);
INSERT INTO fructe_vandute VALUES(23, 6);
INSERT INTO fructe_vandute VALUES(24, 6);

	Ivan
Vanzare 1
INSERT INTO vanzari_zilnice VALUES(7, TO_DATE('17-APR-2014', 'DD-MON-YYYY'), 5.25, 4);
INSERT INTO fructe_vandute VALUES(25, 7);
INSERT INTO fructe_vandute VALUES(31, 7);
INSERT INTO fructe_vandute VALUES(32, 7);
INSERT INTO fructe_vandute VALUES(33, 7);

Vanzarea 2
INSERT INTO vanzari_zilnice VALUES(8, TO_DATE('19-APR-2014', 'DD-MON-YYYY'), 5.25, 4);
INSERT INTO fructe_vandute VALUES(26, 8);
INSERT INTO fructe_vandute VALUES(27, 8);
INSERT INTO fructe_vandute VALUES(28, 8);
INSERT INTO fructe_vandute VALUES(30, 8);

Vanzare 3
INSERT INTO vanzari_zilnice VALUES(9, TO_DATE('19-MAY-2014', 'DD-MON-YYYY'), 3, 4);
INSERT INTO fructe_vandute VALUES(34, 9);
INSERT INTO fructe_vandute VALUES(35, 9);

	Independescu
Vanzarea 1
INSERT INTO vanzari_zilnice VALUES(11, TO_DATE('15-APR-2014', 'DD-MON-YYYY'), 5.57, 5);
INSERT INTO fructe_vandute VALUES(41, 11);
INSERT INTO fructe_vandute VALUES(42, 11);
INSERT INTO fructe_vandute VALUES(43, 11);
INSERT INTO fructe_vandute VALUES(44, 11);
INSERT INTO fructe_vandute VALUES(45, 11);

10.Angajatii lunii:
===================
Piata 1 Decembrie
INSERT INTO angajatii_lunii VALUES(TO_DATE('APR-2014', 'MON-YYYY'), 2, 50, NULL, 'Va astept la standul meu.');

Piata Trapezului
INSERT INTO angajatii_lunii VALUES(TO_DATE('APR-2014', 'MON-YYYY'), 3, 45, NULL, 'Veneti la mine pentru fructe proaspete.');
