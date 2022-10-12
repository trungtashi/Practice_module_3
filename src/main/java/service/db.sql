create database studentmanager;
use studentmanager;
create table Classroom(
id int not null auto_increment primary key,
name varchar(200) not null,
dateOfBirth date not null,
address varchar(200),
phoneNumber varchar(10) not null,
email varchar(200) not null,
classroom varchar(50)
);
insert into Classroom(name,dateOfBirth,address,phoneNumber,email,classRoom)values
('Trung','1999-10-29','Bắc Giang',098688888,'trung@gmail.com','Java'),
('Thor','2000-10-10','Hà Nội',099898989,'thor@gmail.com','JavaScript');

select * from Classroom;