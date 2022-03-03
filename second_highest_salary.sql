/*Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.*/

select t2.nextsal as SecondHighestSalary
from 
(select *,LAG(salary,1) over (order by salary)  as nextsal
from
(Select *
from 
Employee
order by salary desc ) t1 ) t2
limit 1
