-- Page-by-page display of univerisites (2nd page)

select un.*, c.name, s.name, ctr.name 
from Universities un
join Cities c on un.city_id = c.id 
join States s on c.state_id =s.id 
left join Countries ctr on s.country_id = ctr.id 
order by un.name
limit 10
offset 10
