CREATE DATABASE ONLINEBOOKSTORE;
USE ONLINEBOOKSTORE;
CREATE TABLE Books (
Book_id int,
title varchar(50),
author_id int,
price int,
publication_year int,
PRIMARY KEY(Book_id),
FOREIGN KEY(author_id) REFERENCES Authors(Author_id));

CREATE TABLE Authors (
Author_id int,
author_name varchar(50),
country varchar(50),
PRIMARY KEY(Author_id));

CREATE TABLE Orders (
Order_id int,
Book_id int,
customer_name varchar(50),
Order_date varchar(50),
PRIMARY KEY(Order_id),
FOREIGN KEY(Book_id) REFERENCES Books(Book_id));


insert into books(Book_id,title,author_id,price,publication_year) values (1,"Stories",1,50,2000);
insert into books(Book_id,title,author_id,price,publication_year) values (2,"Poems",2,100,2001);
insert into books(Book_id,title,author_id,price,publication_year) values (3,"Novel",3,150,2004);
insert into books(Book_id,title,author_id,price,publication_year) values (4,"Poems",4,50,2004);
insert into books(Book_id,title,author_id,price,publication_year) values (5,"Short Stories",5,500,2020);

insert into Authors(Author_id,author_name,country) values (1,"Author1","India");
insert into Authors(Author_id,author_name,country) values (2,"Author2","Canada");
insert into Authors(Author_id,author_name,country) values (3,"Author3","Australia");
insert into Authors(Author_id,author_name,country) values (4,"Author4","Thailand");
insert into Authors(Author_id,author_name,country) values (5,"Author5","India");

insert into Orders(Order_id,Book_id,customer_name,Order_date) values (1,1,"Cus1","01-12-2023");
insert into Orders(Order_id,Book_id,customer_name,Order_date) values (2,2,"Cus2","06-10-2023");
insert into Orders(Order_id,Book_id,customer_name,Order_date) values (3,3,"Cus3","11-12-2023");
insert into Orders(Order_id,Book_id,customer_name,Order_date) values (4,4,"Cus4","21-11-2023");
insert into Orders(Order_id,Book_id,customer_name,Order_date) values (5,5,"Cus5","05-12-2023");

select * from books;
select * from orders;

select * from authors;

Alter table books Add genre varchar(50);

Alter table Orders Add Quantity varchar(50);

select books.book_id,books.title,Authors.author_name,Authors.country from books join Authors on books.author_id = Authors.author_id;

select Orders.customer_name,Orders.order_date,books.title from Orders join books on Orders.Book_id = books.Book_id;


