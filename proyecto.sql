

drop database ventas;
create database if not exists ventas;
use ventas


create table customers ( customer_id int, first_name varchar (255), last_name varchar(255),
                        number_of_complains int, email_address varchar(255), primary key (customer_id));

create table sales ( purchase_number int,date_of_purchase date not null,customer_id int,
		    item_code varchar(100) not null, primary key ( purchase_number),
		    foreign key (customer_id) references customers (customer_id) on delete cascade);

show tables;
describe sales;
describe customers;
