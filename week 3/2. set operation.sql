use dummydb;
/*
5 kinds of operation
- union -> commons + all the mismatch
- union all -> + operation in list. ( cummon will be repeated + uncummon )
- intersection -> only cummons
- minus -> maybe not supported by sql
*/


select * from employees where salary>10000;
select * from employees where department_id=100;

select * from employees where salary>10000
INTERSECT
select * from employees where department_id=100;