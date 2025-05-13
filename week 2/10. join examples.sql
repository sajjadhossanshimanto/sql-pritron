/*
kinds of join 
1. inner join -> only matching part
2. left join -> matching + left part
3. right join -> matching + right part
4. cross join -> left + matching + right
*/

select * from employees;

-- self join
select ----
from employees as e join employees as m on e.employee_id=m.employee_id

-- print employee first_name, manager_name
select 
    e.first_name as employee_name, 
    m.first_name as manager_name
from employees as e 
    join employees as m 
        on e.manager_id=m.employee_id;

-- jesob department er kono employee nei
select * from departments;

select departments.department_name
from departments left join employees on departments.department_id = employees.department_id 
where employees.department_id is NULL;

select * from employees where employees.department_id = "IT Support";

-- name, salary, & avg salary thake koto kom
select 
	employees.first_name,
    employees.salary,
    (select avg(salary) from employees where department_id = employees.department_id) - employees.salary
from employees join departments on employees.department_id = departments.department_id;


-- list those department whoes avg salary is above 5k
select department_id
from employees
group by department_id having avg(salary)>5000;

select department_name
from employees join departments on employees.department_id=departments.department_id
group by department_name having avg(salary)>5000;