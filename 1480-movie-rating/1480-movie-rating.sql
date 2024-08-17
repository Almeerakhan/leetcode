# Write your MySQL query statement below
(select u.name as results
from MovieRating m
join Users u on u.user_id = m.user_id
group by u.name
order by count(*) desc,
u.name asc
limit 1)
union all
(select m.title as results
from MovieRating mr
join Movies m on m.movie_id = mr.movie_id
where mr.created_at between '2020-02-01' and '2020-02-29'
group by m.title
order by avg(mr.rating) desc, m.title asc
limit 1)
