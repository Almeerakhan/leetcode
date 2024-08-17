
# Write your MySQL query statement below
select coalesce(e.name) as name
from Employee e
join Employee a on e.id = a.managerid
group by e.id
having count(a.managerId)>=5;
