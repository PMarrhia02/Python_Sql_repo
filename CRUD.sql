create database Hospital;
use Hospital;

create table Doctor(Name varchar(100), id int, dept varchar(100));
insert into Doctor
VALUES("DR.Ram",2236,"Heart Specialist"),
("DR.Hathi",2497,"Medicine"),
("DR.Suman",4467,"Homeopathic");

alter table Doctor add constraint pk_Doctor Primary KEY(id);

select * from Doctor;
delete from Doctor where id = 4467;
 
