# Write your MySQL query statement below
select w.id from Weather w , Weather w1
where datediff(w.recordDate,w1.recordDate) = 1 && w.temperature > w1.temperature;
