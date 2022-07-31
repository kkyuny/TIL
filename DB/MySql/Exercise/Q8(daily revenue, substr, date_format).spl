-- Q8. 7월의 daily revenue는 증가하는 추세인가?  평균 daily revenue도 구하시오
-- 날짜를 substr를 통하여 group by 한 뒤 값을 구하는 방식
select substr(purchased_at, 1, 10), sum(price) as revenue
from tbl_purchase
where purchased_at like '2020-07%'
group by 1;

select avg(revenue)
from (select substr(purchased_at, 1, 10), sum(price) as revenue
from tbl_purchase
where purchased_at like '2020-07%'
group by 1) foo;

-- 날짜를 date_format을 통하여 group by 한 뒤 값을 구하는 방식

select date_format(purchased_at - interval 9 hour, "%Y-%m-%d") as date_at
	,sum(price)
from tbl_purchase
where purchased_at like '2020-07%'
group by 1;

select avg(revenue)
from (select date_format(purchased_at - interval 9 hour, "%Y-%m-%d") as date_at
	,sum(price) as revenue
from tbl_purchase
where purchased_at like '2020-07%'
group by 1) foo;
