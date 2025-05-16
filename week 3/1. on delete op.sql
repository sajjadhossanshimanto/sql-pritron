use programminghero;


create table student(
	roll char(4) primary key,
    name varchar(50) not null,
    email varchar(50) unique,
    address varchar(120),
    age int check(age>10)
);

create table Course(
	CourseNo varchar(5) primary key,
    CourseName varchar(50)
);

create table Email(
	Roll varchar(5),
    CourseNo varchar(5),
    enroll_date date,
    foreign key(roll) references Student(roll) on delete cascade,
    foreign key(CourseNo) references Course(CourseNo) on delete set null
);

