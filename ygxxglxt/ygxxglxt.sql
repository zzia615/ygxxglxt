create database ygxxglxt
go

use ygxxglxt
go

create table Admin
(
Name nvarchar(12) not null primary key,
Pwd nvarchar(12) not null
)
go

insert into Admin(Name,pwd) values('admin','123456')
go


create table EmployeeInfo
(
ID nvarchar(8) not null primary key,
Name nvarchar(12) not null,
Salary float not null
)
go

insert into EmployeeInfo(ID,Name,Salary) values('20080001','张锋',2890)
insert into EmployeeInfo(ID,Name,Salary) values('20080002','张二',2890)
insert into EmployeeInfo(ID,Name,Salary) values('20080003','张仨',2890)
insert into EmployeeInfo(ID,Name,Salary) values('20080004','张刘',2890)
insert into EmployeeInfo(ID,Name,Salary) values('20080005','张军',2890)
insert into EmployeeInfo(ID,Name,Salary) values('20080006','张发',2890)
go