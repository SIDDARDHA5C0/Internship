create database ecommerce;
use ecommerce;
create table product(pid int primary key,name varchar(50),description varchar(50),price int , category 
varchar(50));
desc product;
create table region(rid int primary key,name varchar(50));
desc region;
create table time_period(tpid int primary key, name varchar(50));
desc time_period;
create table customer(cid int primary key,name varchar(50),address varchar(50),age int,
loyal_status varchar(50));
desc customer;
create table inventory(inid int primary key, pid int, stock_level int, 
foreign key (pid) references product(pid));
desc inventory;
create table purchase (prid int primary key, cid int,tpid int,foreign key (cid) references customer(cid),
foreign key (tpid) references time_period(tpid));
desc purchase;
create table purchase_product(prid int ,pid int, foreign key (prid) references purchase(prid),
foreign key (pid) references product (pid));
desc purchase_product;
