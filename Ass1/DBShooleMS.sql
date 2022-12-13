Create Database SchoolDB

Create table tb_students(
S_id int primary key,
Sname varchar(40),
Sclass int null,
Ssection varchar(1) null

);

Create table tbl_subject(
Sb_id int primary key,
Sbname varchar(20) null,
Sbclass int null);

Create table tbl_class(
Class int ,
Section varchar(1) null
);

select*from tb_students;
select*from tbl_subject;
select*from tbl_class;

insert into tb_students values(1,'Nara',10,'A'),
(2,'Rana',11,'B');


insert into tbl_subject values(1,'Computer',11),
(2,'Math',10);


insert into tbl_class  values(10,'A'),
                             (10,'B'),
							 (10,'C'),
							 (11,'A'),
							 (11,'B'),
							 (11,'C');


