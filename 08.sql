-- Universities which have information about country and raiting in 2021

select un.id, un.name, un.year_foundation, un.description,
c.name as city,
s.name as state,
qs.qs_raiting as raiting
from Universities un
join Cities c on un.id = c.id 
join States s on c.id = s.id
join QS_raiting qs on un.id = qs.university_id where year = 2021
