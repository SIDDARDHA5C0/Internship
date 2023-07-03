create database library;
use library;
create table Book (Bookid int primary key,title varchar(50),author varchar(50),publisher varchar(50),publication_year 
int,isbn int,genre varchar(50),availability boolean);
desc book;
create table Borrower(borrowerid int primary key,name varchar(50), address varchar(50),phone_number int,email varchar(50));
desc Borrower;
create table loans(loanid int primary key,bookid int,borrowerid int,date_borrowed date, due_date date,date_returned date);
desc loans;
alter table loans add constraint foreign key(bookid) references book(bookid),
add constraint foreign key(borrowerid) references borrower(borrowerid);
desc loans;
create table reservation (reservationid int primary key,bookid int, borrowerid int, date_reserved date,
date_needed date,status varchar(10),foreign key(bookid) references book(bookid),
foreign key(borrowerid) references borrower(borrowerid));
desc reservation;
insert into book (bookid,title,author,publisher,publication_year,isbn,genre,availability) values
(1,'book1','varun','pearson',2016,2343,'friction',1);
insert into book (bookid,title,author,publisher,publication_year,isbn,genre,availability) values
(2,'book2','pak','pearson',2016,2343,'family',1),
(3,'book3','var','omagle',2017,2893,'romantic',0),
(4,'book4','unnie','son of dear',2388,2343,'horror',1),
(5,'book5','papa','lily ',2019,9163,'tragety',1),
(6,'book6','nayak','pinkflower',2022,2343,'crime',1);
insert into borrower(borrowerid,name,address,phone_number,email)values
(23,'karun','guntur',89898989,'20bq1a0551@gmail.com'),
(24,'ganesh','vijayawada',89000089,'20bq1a05b1@gmail.com'),
(25,'mango','guntur',89129889,'20bq1a05b5@gmail.com'),
(26,'packman','kachapuram',8912379,'20bq1a05c2@gmail.com'),
(27,'avatar','koritepadu',89236789,'20bq1a05c6@gmail.com');
-- the format for date in mysql is 'yyyy-mm-dd' and that must be as string too. 
insert into loans(loanid,bookid,borrowerid,date_borrowed,due_date,date_returned)values
(12,3,25,25/05/2022,30/05/2022,27/05/2022),
(13,4,27,5/05/2022,15/05/2022,24/05/2022),
(14,5,23,17/05/2022,30/05/2022,21/05/2022);
insert into reservation(reservationid,bookid,borrowerid,date_reserved,date_needed,status )values
(72,2,23,'2027-02-27','2027-02-28','active'),
(73,5,27,'2023-02-05','2023-06-01','expired'),
(74,3,25,'2023-03-03','2023-03-01','canceled');

select * from book;
select * from borrower;
select * from loans;
select * from reservation;

select * from book where availability=1;
select book.title,book.author,borrower.name,loans.date_borrowed,loans.due_date from book 
inner join loans on book.bookid=loans.bookid inner join
borrower on loans.borrowerid=borrower.borrowerid;
select book.title,book.author,borrower.name ,reservation.date_reserved,reservation.date_needed from book
inner join reservation on book.bookid=reservation.bookid inner join
borrower on reservation.borrowerid=borrower.borrowerid;
