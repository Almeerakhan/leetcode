# Write your MySQL query statement below
select q.person_name 
from Queue q 
join Queue q1
on q.turn >= q1.turn
group by q.turn
having sum(q1.weight) <= 1000
order by sum(q1.weight) desc
limit 1;