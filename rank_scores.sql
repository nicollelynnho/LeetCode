/*Write an SQL query to rank the scores. The ranking should be calculated according to the following rules:

The scores should be ranked from the highest to the lowest.
If there is a tie between two scores, both should have the same ranking.
After a tie, the next ranking number should be the next consecutive integer value. In other words, there should be no holes between ranks.
Return the result table ordered by score in descending order.*/

Select
   Scores.score,
   t2.rank 
From
   (
      Select
         *,
         ROW_NUMBER() over (
      order by
         t1.dc desc) as 'rank' 
      From
         (
            Select distinct
(Scores.score) as dc 
            from
               Scores 
            order by
               Scores.score
         )
         t1
   )
   t2 
   right join
      Scores 
      on t2.dc = Scores.score 
Order by
   Scores.score desc
