# Write your MySQL query statement below
select d.name as Department , e.name as Employee , e.salary as Salary
from  Employee e
inner join  Department d on e.departmentId = d.id
where (
    select count(distinct salary)
    from Employee e2
    where e2.departmentId = e.departmentId and e2.salary >= e.salary
) <=3
order by Department , Salary desc
;
