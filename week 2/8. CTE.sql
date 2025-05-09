-- cte -> cummon table expression
-- this actually a way to save results in a variable
-- you have to use that var instantly

with avgit as (
	select avg(salary) as avgsal
	from employees 
	where department_id = 60 -- it
)
select * from avgit;

 max_market as (
	select max(salary)
	from employees
	where department_id = 20 -- marketing
)
