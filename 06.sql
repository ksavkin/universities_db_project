-- Universities with requirements of IELTS <= 7.5 (version 1)

select un.*, rq.ielts
from Universities un
join Requirements rq on un.id = rq.id
where IELTS <= 7.5
order by rq.IELTS desc
