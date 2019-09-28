
drop database restaurante;
system clear;
create database if not exists restaurante;
use restaurante;
create table clasificacion_productos (codigo int primary key auto_increment, descripcion varchar(200));
create table registro_productos (codigo int primary key auto_increment, nombre varchar(200), codigo_clasificacion varchar(200), costo float, precio_venta float);
create table codigo_cliente (codigo_clientes int primary key auto_increment, nombre varchar(200), telefono varchar(200), direccion varchar(200), fecha varchar(200));
show tables;
describe clasificacion_productos;
describe registro_productos;
describe codigo_cliente;
