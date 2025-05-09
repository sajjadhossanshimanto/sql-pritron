/*
template order of commands
select ..c ol_name
from ..table
whhere ...con
order by ...
limit ...
offset ...
 */


-- need to know how many kind of designation are there in a company
select distinct desig from employee;

-- sort name in accordance with age
select name from employee order by age asc;-- asc for acending order
select name from employee order by age desc;-- decending order

-- i need to see rows 50 to 60
select * from employee limit 10 offset 49;
-- 49 ta bud, then next 10 ta
select * from employee limit 49, 10; -- 2nd way
