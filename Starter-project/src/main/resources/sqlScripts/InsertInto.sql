-- TIP_RACUNA PODACI
INSERT INTO "tip_racuna"("id","naziv","oznaka","opis")
VALUES(nextval('tip_racuna_seq'), 'Tekuci racun', 'TKR', 'Racun koji je neophodan za obavljanje obicnih transakcija');
INSERT INTO "tip_racuna"("id","naziv","oznaka","opis")
VALUES(nextval('tip_racuna_seq'), 'Devizni racun', 'DZR', 'Racun koji je neophodan za transakcije sa inostranstvom');
INSERT INTO "tip_racuna"("id","naziv","oznaka","opis")
VALUES(nextval('tip_racuna_seq'), 'Studentski racun', 'STR', 'Racun koji omogucava povlastice studentima');
INSERT INTO "tip_racuna"("id","naziv","oznaka","opis")
VALUES(nextval('tip_racuna_seq'), 'Privremeni racun', 'PVR', 'Racun koji je se gasi nakon nekog vremena');
INSERT INTO "tip_racuna"("id","naziv","oznaka","opis")
VALUES(nextval('tip_racuna_seq'), 'Penzionerski racun', 'PZR', 'Racun koji je omogucava povlastice penzionerima');

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
VALUES(nextval('racun_seq'),'Racun klijenta 1','RC001','Racun koji koristi klijent br. 1',1,5);
INSERT INTO "racun"("id","naziv","oznaka","opis","tip_racuna","klijent")
VALUES(nextval('racun_seq'),'Racun klijenta 2','RC002','Racun koji koristi klijent br. 2',5,4);
INSERT INTO "racun"("id","naziv","oznaka","opis","tip_racuna","klijent")
VALUES(nextval('racun_seq'),'Racun klijenta 3','RC003','Racun koji koristi klijent br. 3',4,3);
INSERT INTO "racun"("id","naziv","oznaka","opis","tip_racuna","klijent")
VALUES(nextval('racun_seq'),'Racun klijenta 4','RC004','Racun koji koristi klijent br. 4',2,2);
INSERT INTO "racun"("id","naziv","oznaka","opis","tip_racuna","klijent")
VALUES(nextval('racun_seq'),'Racun klijenta 5','RC005','Racun koji koristi klijent br. 5',3,1);

INSERT INTO "racun"("id","naziv","oznaka","opis","tip_racuna","klijent")
VALUES(-100,'TestNaziv','TestOznaka','TestOpis',1,5);