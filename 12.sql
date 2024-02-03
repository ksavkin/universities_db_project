-- Changes in universities prices by years

with pr_year as (
select
	un.id,
	un.name,
	cs.year,
	cs.cost,
	lag(cost) over(PARTITION BY un.id order by year) as previous_year_cost
from
	universities un
join costs cs on
	un.id = cs.university_id)
select
	*,
	CONCAT(round(cost / IF(previous_year_cost = 0, NULL, previous_year_cost)* 100, 2), '%')
as difference_of_cost
from
	pr_year
