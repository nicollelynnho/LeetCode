/*https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/submissions/*/

select t1.customer_number
from
(Select customer_number,count(order_number) as order_count
from 
Orders
group by customer_number
order by order_count desc
limit 1 ) t1
