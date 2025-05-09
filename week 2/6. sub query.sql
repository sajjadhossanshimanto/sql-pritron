use dummydb;

select * from employees where employee_id=144;-- this employee has scalary 2500
select count(*) from employees where salary>2500;

-- with subquery instade of hardcoding
select * from employees where salary > (select salary from employees where employee_id=144);
select count(*) from employees where salary > (select salary from employees where employee_id=144);

/* 
select * from employees where department_id=20;
select job_id, count(*) from employees group by job_id;
select * from employees where job_id="SA_MAN";
*/

select avg(salary) from employees where department_id=(select job_id from departments where department_name="Marketing")

