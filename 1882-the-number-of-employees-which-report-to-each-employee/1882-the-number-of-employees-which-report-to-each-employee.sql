# Write your MySQL query statement below
select e.employee_id ,e.name,count(e1.reports_to) as reports_count ,round(avg(e1.age)) as average_age
from Employees e1
inner join Employees e on e1.reports_to = e.employee_id
group by employee_id
order by employee_id asc;