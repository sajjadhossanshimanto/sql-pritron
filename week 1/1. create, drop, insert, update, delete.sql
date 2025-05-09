CREATE database ProgrammingHero;

USE programminghero;

CREATE TABLE Student(
	Roll char(4),
    Name varchar(50),
    Marks Double
);

Drop TABLE Student;

create table student(
	roll char(4) primary key,
    name varchar(50),
    marks double
);

insert into Student 
(roll, name, marks) values(1, "shimanto", 100);

insert into Student
(roll, name) values(2, "raj");

set sql_safe_updates = 0;
update student 
set name = "sajjad hossan" where roll=1;
set sql_safe_updates = 1;

set sql_safe_updates = 0;
delete from student where roll=1;
set sql_safe_updates = 1;