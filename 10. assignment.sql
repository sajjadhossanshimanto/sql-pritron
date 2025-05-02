use programminghero;

-- q1 a
create table student(
	roll char(4),
    name varchar(50),
    email varchar(50),
    address varchar(120),
    age int
);

-- b
create table Library(
	book_name varchar(100),
    who_hired_roll char(4),
    
    foreign key (who_hired_roll) references Student(roll)

);

-- c
create table Fees(
	Fee_payer_roll char(4),
    Total_fee double,
    
    foreign key (Fee_payer_roll) references student(roll)
);

-- q2
create table Student(
    roll char(4) primary key,
    name varchar(50) not null,
    email varchar(50) unique,
    address varchar(120),
    age int check (age > 15)
);

create table Library(
    book_name varchar(100) primary key,
    who_hired_roll char(4),

    foreign key (who_hired_roll) references Student(roll)
);

create table Fees(
	Fee_payer_roll char(4) primary key,
    Total_fee double not null,
    
    foreign key (Fee_payer_roll) references student(roll)
);

-- question 5
select distinct department from employee;

-- question 6
select LastName from employee order by age desc;

-- q 7
select LastName from employee where age>30 and Department="Marketing";

-- q 8 
select * from employee;

-- q9
select * from employee where Lastname like "%son%" or FirstName like "%son%";

-- q10
select * from employee where Department="Engineering";