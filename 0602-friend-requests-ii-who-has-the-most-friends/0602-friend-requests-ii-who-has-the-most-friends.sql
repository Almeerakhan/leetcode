with friend_request_sent as
(
    select requester_id as id,
    count(accepter_id) as num
    from RequestAccepted
    group by requester_id
),
friend_request_accepted as
(
    select accepter_id as id,
    count(requester_id) as num
    from RequestAccepted
    group by accepter_id
),
total_request as (
select id ,num 
from friend_request_sent
union all
select id ,num 
from friend_request_accepted
)
select id, sum(num) as num 
from total_request
group by id
order by num desc
limit 1;