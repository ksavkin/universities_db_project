-- Queries for website filters

select c.id, c.name
from Countries c
where c.name like 'U%'
order by c.name

select s.id, s.name
from States s 
where s.country_id = 1 and s.name like 'C%'
order by s.name

select id, name
from Cities
where state_id = 1
order by name
