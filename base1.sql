
drop database Sales;
create database if not exists Sales;
show databases;
use Sales;

create table customers (customer_id int, first_name varchar(255),las_name varchar(255),
			email_address varchar(255),number_of_complaints int, primary key (customer_id));

create table sales (purchase_number int auto_increment,
		    date_of_purchase date not null,
		    customer_id int,
		    item_code varchar(100),
		    primary key (purchase_number),
		    foreign key (customer_id) references customers (customer_id) on delete cascade
		  );



create table items ( item_id int, item varchar(255), unit_price numeric(10,2),company_id varchar(255),
			primary key (item_id));

create table companies (company_id int auto_increment, company_name varchar(255), headquaters_phone int(12),
			primary key (company_id));

show tables;
describe sales;
describe customers;
describe items;
describe companies;

insert into companies (company_name, headquaters_phone) values ("doger",32131);
insert into companies (company_name, headquaters_phone) values ("VVcompany",12131);
insert into companies (company_name, headquaters_phone) values ("Softek",32134);
insert into companies (company_name, headquaters_phone) values ("doger C",32131);
insert into companies (company_name, headquaters_phone) values ("VVcompany C",12131);
insert into companies (company_name, headquaters_phone) values ("Softek",72134);
insert into companies (company_name, headquaters_phone) values ("doger D",32131);
insert into companies (company_name, headquaters_phone) values ("VVcompany D",12131);
insert into companies (company_name, headquaters_phone) values ("Softek",12134);


select *from companies;
select company_name from companies;
select *from companies where company_name="Softek" and headquaters_phone=12134;
select *from companies where company_name="Softek" or headquaters_phone=32134;
select company_name, count(company_name) from companies group by company_name;
