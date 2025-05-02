use programminghero;

drop table student;

-- any three of them is ok or we can use mixture of them


create table student(
	roll char(4),
    name varchar(50) not null,
    email varchar(50),
    address varchar(120),
    age int,
    
    primary key(roll),
    unique(email),
    check(age>10)
);

create table student(
	roll char(4),
    name varchar(50) not null,
    email varchar(50),
    address varchar(120),
    age int,
    
    constraint pk_roll primary key(roll),
    constraint uq_email_rule unique(email),
    constraint age_check check(age>10)
);

insert into student (roll, name, email, address, age) values("0001", "shimanto", "shimanto.123@gmail.com", "kalabagan dhaka", 12);
insert into student (roll, name, email, address, age) values("0002", "raj", "raj.123@gmail.com", "kalabagan dhaka", 9);
-- Error Code: 3819. Check constraint 'age_check' is violated.
insert into student (roll, name, email, address, age) values("0003", "sajjad", "shimanto.123@gmail.com", "kalabagan dhaka", 12);
-- Error Code: 1062. Duplicate entry 'shimanto.123@gmail.com' for key 'student.uq_email_rule'


-- composite primary key
create table courses(
	coursename varchar(15),
    university varchar(50),
    
    primary key(university, coursename)
);

insert into courses (coursename, university) values("che 101", "buet");
-- pk is not actually shown as a seperated row


-- foreign key
create table Library(
	book_name varchar(100)  primary key,
    who_hired_roll char(4),
    
    foreign key (who_hired_roll) references Student(roll)

);
    
create table Fees(
	book_name varchar(100),
    price double,
    
    foreign key (book_name) references Library(book_name)
);

drop table Fees;
