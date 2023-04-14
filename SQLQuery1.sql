
drop table Zawodnicy 


create table Zawodnicy
(
   id_zawodnika int primary key identity(1,1), 
   id_trenera int,
   imie varchar(255),
   nazwisko varchar(255),
   kraj varchar(255) ,
   data_ur date,
   wzrost int, 
   waga decimal(5,2) 
)




insert into zawodnicy values (1,'jan','kowalski', 'pol','20230414',180, 80.34)
-- komentarz jednowieroszy

/* komentarz 
   wielo
   wierszowy
*/
 

select * from zawodnicy 
