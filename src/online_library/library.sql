create database library;
use library;
create table Administrator(userid varchar(20) primary key, password varchar(20) not null);

insert into Administrator (userid,password) values ("nita" , "library");
create table book(id integer(12) primary key,title varchar(40) not null,author varchar(30)  not null,price decimal(10,2) not null,no_of_copies integer(5) not null);
insert into book (id ,title ,author ,price ,no_of_copies) values (123 ,"one indian girl","chethan bhagat",123,10);
create table users(userid varchar(10) primary key,password varchar(20) not null, enrollmentno varchar(10) not null unique, deptno integer(3) references dept(deptno),SecurityQ  int not null,Answer varchar(15) not null);
create table dept(deptno integer(3) primary key,deptname varchar(40) not null);
insert into dept (deptno,deptname) values(123,"computer science and engineering");
insert into users(userid,password,enrollmentno,deptno,SequrityQ,Answer) values("16ucs069","Bharath@1","16UCS069",123,1,"rocky");

create table student_book_table(bookid int references book(id),issueDate date,returnDate date,fine float);
