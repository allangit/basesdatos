

drop database consulta;
system clear;
 create database if not exists consulta;
use consulta;
create table depart_ingenieria ( name varchar(200), cedula int, puesto varchar(200));
create table department (name varchar(200), cedula int , puesto varchar(200));
insert into depart_ingenieria (name,cedula,puesto) values ("carlos",503380285,"electronica"),("juan",2333333,"electrica"),("miguel",11111111111,"mecanica"),
("Alan",1111123,"informatica"),("jose",22222,"fisica"),("vivian",55555,"administracion");
insert into department (name,cedula,puesto) select *from depart_ingenieria;
show tables;
describe depart_ingenieria;
describe department;
select name, cedula, (select count(puesto) from depart_ingenieria where puesto="fisica") from depart_ingenieria;
