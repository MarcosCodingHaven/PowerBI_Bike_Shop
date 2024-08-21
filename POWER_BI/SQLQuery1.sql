with cte as (
select * from bike_share_yr_0
union
select * from bike_share_yr_1)


select 
dteday,
season,
a.yr,
weekday,
hr,
rider_type,
riders,
price / 100 AS price,
COGS / 100 AS price,
riders * price / 100 as revenue,
(riders * price -COGS)/ 100 as profit
from cte a
left join cost_table b 
on a.yr = b.yr
