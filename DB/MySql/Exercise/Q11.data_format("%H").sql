-- Q11. 2020년 7월 시간대별 Revenue를 구해주세요. 시간대가 Revenue가 가장 높고, 가장 낮나요?
select date_format(purchased_at - interval 9 hour, "%H") as date_at, sum(price) as sum
from tbl_purchase
where purchased_at >= '2020-07-01'
	and purchased_at < '2020-08-01'
group by 1
order by 2 desc;

select date_at, avg(sum)
from (select date_format(purchased_at - interval 9 hour, "%y-%m-%d %a %H") as date_at, sum(price) as sum
from tbl_purchase
where purchased_at >= '2020-07-01'
	and purchased_at < '2020-08-01'
group by 1)foo
group by 1;

-- Q10번과 마찬가지로 두 가지의 풀이방법이 존재하는데, 구해야하는 조건이 한 가지이기 때문에
-- 일단은 어느 풀이방법을 사용하여도 문제를 푸는데는 무방하다.
