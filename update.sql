1.Telefon nou:
==============
UPDATE vanzatori
SET telefon='0723435982'
WHERE id_vanzator=2;

2.Bonus angajatii lunii:
========================
UPDATE angajatii_lunii
SET premiu=premiu+0.2*premiu
WHERE TO_CHAR(data_premiu, 'MON-YYYY')='APR-2014';

3.Congelare mere:
=================
UPDATE fructe
SET data_stricare=data_stricare+7
WHERE data_stricare > SYSDATE AND (SELECT COUNT(*) FROM fructe_vandute fv WHERE fv.id_fruct=id_fruct) > 0;

4.Eroare comanda:
=================
UPDATE comenzi
SET info_aditionale='Comanda de mere'
WHERE id_comanda=10;

5.Transport:
============
UPDATE adrese 
SET indicatii_supl='Tramvai: 45, 69, 82. Autobuz: 234, 311. Taxi'
WHERE id_adresa=(SELECT id_adresa FROM piete WHERE nume_piata='Piata 1 Decembrie');
