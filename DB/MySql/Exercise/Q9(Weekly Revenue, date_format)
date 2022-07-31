-- Q9. 2020년 7월의 평균 Weekly Revenue를 구해주세요.
select date_format(purchased_at - interval 9 hour, "%Y-%m-%U") as date_at, sum(price)
from tbl_purchase
where purchased_at >= '2020-07-05'
	and purchased_at < '2020-07-26'
group by 1;
