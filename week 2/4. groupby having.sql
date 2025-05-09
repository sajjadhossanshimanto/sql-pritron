use dummydb;

select * from employees;

select max(salary) from employees;

-- group by
select department_id, max(salary), count(*) from employees group by department_id;

select * from employees where department_id=50;
select count(*) from employees where department_id=50;

-- having -> if i need to apply condition upon groupby
select department_id, max(salary), count(*) from employees where salary>5000 group by department_id;
-- all the entries have turncated not spacific group

select department_id, max(salary), count(*) from employees group by department_id having max(salary)>5000;
-- every group having less than 5000 will be turncated

-- trick to avoid re-writing the same condition
select department_id, max(salary) as sal, count(*) from employees group by department_id having sal>5000;

-- 
