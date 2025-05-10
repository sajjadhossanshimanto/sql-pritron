use dummydb;

select * from employees;
select * from departments;

-- without joining query
select employees.first_name, departments.department_name
from employees, departments
where employees.department_id=departments.department_id;

-- join query
select employees.first_name, departments.department_name
from employees join departments on employees.department_id = departments.department_id;

-- another syntax. cons -> row names have tobe the same in both table
select employees.first_name, departments.department_name
from employees join departments using(department_id)
