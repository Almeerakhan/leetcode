select distinct num as ConsecutiveNums
from Logs
where (id + 1,num) in (
    select * from Logs
) and 
(id+2 , num) in (
    select * from Logs
)