-- Universities with reviews count >= 3

with c1 as (select un.id as id, un.name, count(*) as counter_of_reviews
from Universities un
join Reviews rev on un.id = rev.university_id
group by un.id, un.name)
select un.id, un.name, un.year_foundation, c1.counter_of_reviews
from Universities un
join c1 on un.id = c1.id
where c1.counter_of_reviews >= 3
order by c1.counter_of_reviews desc
