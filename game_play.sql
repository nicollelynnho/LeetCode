/* https://leetcode.com/problems/game-play-analysis-i/ */ 

Select player_id, event_date as 'first_login'
from 
(Select *, ROW_NUMBER() over (partition by player_id) as 'rn'
From
Activity
order by event_date ) t1
where t1.rn = 1
