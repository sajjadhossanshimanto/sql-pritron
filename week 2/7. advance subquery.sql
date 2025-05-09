-- print 2nd height salary

-- 1st way
select distinct salary from employees order by salary desc limit 1 offset 1;
-- limit - order is the way to slice & index an query

-- 2nd way
select max(salary) from employees;
select max(salary) from employees where salary < ( select max(salary) 
												   from employees );
-- but what if i want his full details
-- select * from employees where salary=(..previous ans..)
select * from employees where salary = (select max(salary) from employees where salary < ( select max(salary) 
												   from employees ));

-- list persons who takes more salary then their manager
select * from employees as emp
where salary > (select salary 
				from employees as meg
                where emp.manager_id = meg.employee_id
                );

-- manager and employee do the same
select * from employees as emp
where job_id = (select job_id 
				from employees as meg
                where emp.manager_id = meg.employee_id
                );