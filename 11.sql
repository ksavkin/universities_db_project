-- Universities which price changed by not more than 10000 and count of reviews is more than 2

with dif as
(SELECT un.id as id3, un.name, (max(cs.cost) - min(cs.cost)) as diff
FROM Universities un
Join Costs cs on un.id = cs.university_id
group by un.id, un.name),
countik as
(SELECT un.id as id4, un.name, count(*) as counter
FROM Universities un
join reviews rv on un.id = rv.university_id
group by un.id, un.name)
SELECT un.id, 
 un.name, 
 un.year_foundation, 
 un.count_of_students,
 un.description, 
 c.name AS City,
 s.name State,
 coun.name AS Country,
 dif.diff as difference,
 countik.counter as counter
FROM Universities un
JOIN
 Cities c ON un.id=c.id
JOIN
 States s ON c.id = s.id
left join
 Countries coun ON s.id = coun.id
JOIN dif on un.id = dif.id3
join countik on un.id=countik.id4
where countik.counter > 2 and dif.diff < 10000;
