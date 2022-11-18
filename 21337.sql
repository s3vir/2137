select * from postac;
delete postac where;
select * from postac order by data_ur;
-- select * from postac where rodzaj='wiking';
-- order by data_ur asc limit 2; 

#labt 4, zadanie 1b
alter table postac drop primary key;
alter table postac change id_postaci id_postaci int;
alter table postac modify id_postaci int; 
alter table walizka drop foreign key walizak_ibfk_1;
alter table przetwory drop foreign key przetwory_ibfk_1;
alter table przetwory drop foreign key przetwory_ibfk_2;
show create table przetwory;

#zadanie 
alter table postac add pesel char(11) first;
alter table postac add primary key(pesel);
update postac set pesel = '6433546678' + id_postaci;
describe postac;  
#lab 3, zadanie 3


#lab 4, zadanie 3
select nazwa from postac where nazwa like '$a$';
select nazwa from postac where nazwa like '_e$';

#lab 4. zadanie 3b
update statek set max_ladownosc=max_ladownosc * 0,7 where ...;
#lab, zadanie 3c 
#dodanie warunku check
alter table postac add check(wiek <= 1000)
show create table postac; 

# lab 4, zadanie 4 

