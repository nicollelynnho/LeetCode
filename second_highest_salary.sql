/*Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.*/

SELECT
   t2.nextsal as SecondHighestSalary 
FROM
   (
      SELECT *,
         LAG(salary, 1) over (
      ORDER BY
         salary) as nextsal 
      FROM
         (
            SELECT
               * 
            FROM
               Employee 
            ORDER BY
               salary DESC 
         )
         t1 
   )
   t2 limit 1
