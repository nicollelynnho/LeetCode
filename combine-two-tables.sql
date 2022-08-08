/*https://leetcode.com/problems/combine-two-tables/submissions/*/

Select firstName, lastName, city, state
from
Person
left join
Address
on Person.personId = Address.personId
