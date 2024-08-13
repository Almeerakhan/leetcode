# Write your MySQL query statement below
select s.student_id , s.student_name , sub.subject_name, COALESCE(count(e.student_id),3) as attended_exams
from Students s
cross join Subjects sub
left join Examinations e using (student_id,subject_name)
group by sub.subject_name, s.student_id 
order by s.student_id,sub.subject_name;

