drop database tran;
create database if not exists tran;
use tran;
create table p (conteo int, pclass int, survived int, name varchar(255),sex varchar(255),
                         age int, sibsp varchar(255), parch varchar(255),ticket varchar(255),
                         fare varchar(255),cabin varchar(255), embarked varchar(255),boat varchar(255),
                         body varchar(255), homedest varchar(255)
                        );
show tables;
load data infile "alan.csv" replace into table p fields terminated by ',' lines terminated by '\n' ;
describe p;
select *from p;
