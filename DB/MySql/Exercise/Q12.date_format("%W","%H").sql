-- Q12. 2020년 7월 요일 및 시간대별 Revenue를 구해주세요. 어느 요일 및 시간대의 Revenue가 가장 높고 가장 낮나요?
select day_at, hour_at, avg(revenue)
from (
select date_format(purchased_at - interval 9 hour, '%Y-%m-%d') as date_at,
	date_format(purchased_at - interval 9 hour, '%W') as day_at, 
	date_format(purchased_at - interval 9 hour, '%H') as hour_at, 
    sum(price) as revenue
from tbl_purchase
where purchased_at like '2020-07%'
group by 1,2,3) foo
group by 1,2;

-- 앞서 Q10,11의 문제들에서는 문제가 발생하지 않았지만
-- Q12 처럼 여러 개의 조건들을 구해야하는 경우에 서브쿼리를 사용하지 않으면
-- 내가 원하는 값이 정확하게 나오지 않을 가능성이 있다.
-- 결론적으로, 내가 조회해야할 값이 무엇인지를 정확하게 생각하고 문제를 접근하여 해결하는 것이 필요하다.

-- Q10,Q11 처럼 아래와 같이 문제를 풀 경우
select date_format(purchased_at - interval 9 hour, '%W') as day_at, 
	date_format(purchased_at - interval 9 hour, '%H') as hour_at, 
    avg(price) as revenue
from tbl_purchase
where purchased_at like '2020-07%'
group by 1,2;
-- 요일과 시간이 group by되어 column의 형식은 같지만, 위의 쿼리의 실행결과는
-- 요일과 시간대별 전체의 평균 구매금액이 아닌 각 거래 구매금액의 평균이 조회가 되기 때문에 주의해야한다. 
