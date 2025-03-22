use Hospital;
 select * from Doctor;
alter table doctor add Column Experience int;
Insert into doctor(name, id, dept, Experience) 
Values("Dr. Rajesh", 2249, "Radiology", 3),
("Dr. Ananya",6679, "Cardiology", 7),
("Dr.Vikram",5567,"Neurology",5);
Insert into doctor(name, id, dept, Experience)
values("Dr. Ahuja",5589,"Cardiology",10);


Update Doctor SET Experience = 5 where id = 2236;
Update Doctor SET Experience = 10 where id = 2497;

select dept, count(*) as Total_Doctors
from doctor group by dept;

select dept, MAX(Experience) as MAx_experience
from doctor 
group by dept
having max(Experience) < 10;

select * from doctor 
where dept = "Cardiology";


SELECT * FROM Doctor WHERE experience = (Select MAX(Experience) from doctor);


