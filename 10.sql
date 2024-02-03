-- Full information about universities which are in top 10 in 2023

select un.*,
c.name as city,
s.name as state,
c2.name as country,
qs.qs_raiting as raiting
from Universities un
join Cities c on un.id = c.id 
join States s on c.id = s.id
join Countries c2 on c2.id = s.id
join QS_raiting qs on un.id = qs.university_id and qs.year = '2023'
order by qs.qs_raiting desc
limit 10
