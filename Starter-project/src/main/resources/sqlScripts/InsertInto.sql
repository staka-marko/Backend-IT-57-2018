-- TIP_RACUNA PODACI
INSERT INTO "tip_racuna"("id","naziv","oznaka","opis")
VALUES(nextval('tip_racuna_seq'), 'Osnovni racun', 'OSR', 'Ovaj paket daje mogucnost da koristis trajni nalog za placanje mesecnih obaveza');
INSERT INTO "tip_racuna"("id","naziv","oznaka","opis")
VALUES(nextval('tip_racuna_seq'), 'Tekuci racun', 'TKR', 'Paket sadrzi vise usluga. Ovo je paket za zaposlena lica i on obuhvata: tekeci racun, Visa Electron debitnu karticu, SMS servis, izvod po tekucem racunu');
INSERT INTO "tip_racuna"("id","naziv","oznaka","opis")
VALUES(nextval('tip_racuna_seq'), 'Devizni racun', 'DVR', 'Racun koji sluzi za obavljanje transakcija sa izabranom stranom valutom');
INSERT INTO "tip_racuna"("id","naziv","oznaka","opis")
VALUES(nextval('tip_racuna_seq'), 'Privremeni racun', 'PVR', 'Racun koji je se gasi nakon nekog vremena');
INSERT INTO "tip_racuna"("id","naziv","oznaka","opis")
VALUES(nextval('tip_racuna_seq'), 'Total paket', 'TTP', 'Racun koji obuhvata usluge svih drugih racuna uz mnoge pogodnosti');

INSERT INTO "tip_racuna"("id","naziv","oznaka","opis")
VALUES(-100, 'TestNaziv', 'TestOznaka', 'TestOpis');


--KREDIT PODACI 
INSERT INTO "kredit"("id","naziv","oznaka","opis")
VALUES (nextval('kredit_seq'),'Studentski kredit','STDKR','Kredit namijenjen studentima, sa odgovarajucim povlasticama');
INSERT INTO "kredit"("id","naziv","oznaka","opis")
VALUES (nextval('kredit_seq'),'Potrosacki kredit','PTRKR','Kredit sa manjim iznosom, na kraci period');	
INSERT INTO "kredit"("id","naziv","oznaka","opis")
VALUES (nextval('kredit_seq'),'Stambeni kredit','STMKR','Kredit namijenjen za finansiranje kupovine stana ili kuce');
INSERT INTO "kredit"("id","naziv","oznaka","opis")
VALUES (nextval('kredit_seq'),'Investicioni kredit','INVKR','Kredit namijenjen za investicije određenih pravnih lica');

INSERT INTO "kredit"("id","naziv","oznaka","opis")
VALUES (-100,'TestNaziv','TestOznaka','TestOpis');


--KLIJENT PODACI
INSERT INTO "klijent"("id","ime","prezime","broj_lk","kredit")
VALUES(nextval('klijent_seq'), 'Petar', 'Petrovic', 778800,2);
INSERT INTO "klijent"("id","ime","prezime","broj_lk","kredit")
VALUES(nextval('klijent_seq'), 'Marija', 'Stanic', 442259,4);
INSERT INTO "klijent"("id","ime","prezime","broj_lk","kredit")
VALUES(nextval('klijent_seq'), 'Jelena', 'Pavlovic', 123987,3);
INSERT INTO "klijent"("id","ime","prezime","broj_lk","kredit")
VALUES(nextval('klijent_seq'), 'Vladimir', 'Jeftic', 448800,1);
INSERT INTO "klijent"("id","ime","prezime","broj_lk","kredit")
VALUES(nextval('klijent_seq'), 'Tanja', 'Ivkovic', 992211,3);

INSERT INTO "klijent"("id","ime","prezime","broj_lk","kredit")
VALUES(-100, 'TestIme', 'TestPrezime', 100000,2);


--RACUN PODACI
INSERT INTO "racun"("id","naziv","oznaka","opis","tip_racuna","klijent")
VALUES(nextval('racun_seq'),'Studentski racun','RC301','Racun namijenjen studentima, privremenog karaktera, bez naplate usluga transakcija',4,5);
INSERT INTO "racun"("id","naziv","oznaka","opis","tip_racuna","klijent")
VALUES(nextval('racun_seq'),'Racun fizickog lica','RC788','Standardne usluge',5,4);
INSERT INTO "racun"("id","naziv","oznaka","opis","tip_racuna","klijent")
VALUES(nextval('racun_seq'),'Racun sa oslobodjenim obavezama','RC413','Racun za koji se ne naplacuju usluge transakcija iz odredjenog razloga',4,4);
INSERT INTO "racun"("id","naziv","oznaka","opis","tip_racuna","klijent")
VALUES(nextval('racun_seq'),'Racun fizickog lica','RC755','Standardne usluge',2,2);
INSERT INTO "racun"("id","naziv","oznaka","opis","tip_racuna","klijent")
VALUES(nextval('racun_seq'),'Racun fizickog lica','RC953','Standardne usluge',3,1);

INSERT INTO "racun"("id","naziv","oznaka","opis","tip_racuna","klijent")
VALUES(-100,'TestNaziv','TestOznaka','TestOpis',1,5);