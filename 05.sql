-- Information about universities with number of students from 20000 to 60000

select un.id, un.name, un.count_of_students
from Universities un
where count_of_students BETWEEN 20000 and 60000
order by un.count_of_students desc
