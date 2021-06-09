--1. Izlistati sve tipove racuna
select *
from tip_racuna;

--2. Izlistati tipove racuna za oznakom STR
select *
from tip_racuna
where oznaka = 'STR';

--3. Izlistati ukupni broj klijenata
select count(id)
from klijent;

--4. Izlistati sve tipove racuna sa prvim slovom P
select *
from tip_racuna
where naziv like 'P%';

--5. Izlistati klijente sa nazivima kredita
select k.*, kr.naziv
from klijent k, kredit kr
where k.kredit = kr.id;


--6. Izlistati sve racune koji imaju tip racuna 'studentski'
select r.*, tr.naziv
from racun r, tip_racuna tr
where r.tip_racuna = tr.id
and tr.naziv like 'Studentski racun';


--6. Izlistati sve racune koji imaju stambeni kredit (strani kljuc u tabeli klijent
-- koja je strani kljuc u tabeli racun)
select r.*, kr.naziv 
from racun r, klijent k, kredit kr
where r.klijent = k.id
	and k.kredit = kr.id
	and kr.naziv like 'Stambeni kredit';
	
--7. Izlistati sve klijente koji imaju tip racuna
-- studentski racun i ime im pocinje na slovo T
select k.*, tr.naziv
from klijent k, tip_racuna tr, racun r
where k.id = r.klijent
	and r.tip_racuna = tr.id
	and tr.naziv like 'Studentski racun'
	and k.ime like 'T%';




