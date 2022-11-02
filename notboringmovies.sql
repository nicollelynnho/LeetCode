/* https://leetcode.com/problems/not-boring-movies */

select * 
from
Cinema
where not MOD(Cinema.id,2) = 0 and not Cinema.description = 'boring'
order by Cinema.id DESC
