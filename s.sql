


drop database transmision;
create database if not exists transmision;
use transmision;
create table parametros (conteo int, pclass int, survived int, name varchar(255),sex varchar(255),
                         age int, sibsp varchar(255), parch varchar(255),ticket varchar(255),
                         fare varchar(255),cabin varchar(255), embarked varchar(255),boat varchar(255),
                         body varchar(255), homedest varchar(255)
                        );
show tables;
describe parametros;
select *from parametros;
