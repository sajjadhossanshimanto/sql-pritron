

-- in keyword
select * from students where roll=102 or roll=103 or roll=104;
-- similar 
select * from students where roll in(101, 102, 103);
-- or
select * from students where roll not in(101, 102, 103);


-- pattern matching
select * from students where name like "%rahim%"; -- something rahim something

-- alias coulumn name / table name
select name as std_name from student 