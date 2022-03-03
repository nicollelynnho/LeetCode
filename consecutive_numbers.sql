/*https://leetcode.com/problems/consecutive-numbers/*/

Select distinct
(t1.num) as 'ConsecutiveNums' 
From
   (
      Select
         *,
         LAG(Logs.num, 1) over (
      order by
         Logs.id) as lag1,
         LAG(Logs.num, 2) over (
      order by
         Logs.id) as lag2 
      From
         Logs 
   )
   t1 
where
   t1.num = t1.lag1 
   and t1.num = t1.lag2
