-- use can apply any kind of arithmatic op after the select key
select 10+5;


select cse+me 
from marks where roll=105;

-- we can apply multiple operation as well
select cse+me, cse-me, (math+phy)/2
from marks where roll=105;
