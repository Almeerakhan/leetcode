# Write your MySQL query statement below
select project_id , round(sum(e.experience_years)/count(project_id),2) as average_years
from Project 
left join Employee as e using(employee_id)
group by project_id;