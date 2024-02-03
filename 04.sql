-- Page-by-page display of reviews (2nd page)

select r.*
from Reviews r 
where r.university_id = 11
order by r.date desc
limit 10
offset 10
