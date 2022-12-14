Create Database SchoolDB
go 
use SchoolDB
go
Create table tbl_student(
stu_id int identity primary key,
fname varchar(500) null,
lname varchar(500) null,
);

Create table tbl_subject(
sub_id int identity primary key,
sub_name varchar(500) null,
stu_id int ,
foreign key (stu_id) references tbl_student(stu_id)
);

Create table tbl_class(
cls_id int identity primary key,
cls_name varchar(500) null,
stu_id int ,
sub_id int ,
foreign key (stu_id) references tbl_student(stu_id),
foreign key (sub_id) references  tbl_subject(sub_id)
);

Create table tbl_all(
id int  identity primary key,
stu_id int ,
sub_id int ,
cls_id  int ,
foreign key (stu_id) references tbl_student(stu_id),
foreign key (sub_id) references  tbl_subject(sub_id),
foreign key (cls_id) references  tbl_class(cls_id)

);
Create table Admin(
AdminID int  identity primary key,
AdminEmail varchar(500),
AdminPass int,
);

select*from tbl_student
select*from tbl_subject;
select*from tbl_class;

insert into tbl_class values('B',2,1);
insert into tbl_student values('Nawal','Mohammed',2,2);
insert into tbl_subject values('algorithom',2);