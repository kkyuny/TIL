-- Q4. 7월에 구매 유저의 월 평균 금액은 어떻게 되나요?
-- 두 가지 풀이가 존재한다. 단순하게 7월에 구매를 진행한 유저의 수(중복제거)와 구매금액의 합계를 나누면 되는 방법과
select sum(price) / count(distinct customer_id)
from tbl_purchase
where purchased_at like '2020-07%';

-- 고객별 sum(price)를 서브쿼리로 설정한 뒤 그 결과를 집계함수를 통하여 조회하는 방법이 있다.
select avg(revenue)
from (select customer_id, sum(price) as revenue
	from tbl_purchase
    where purchased_at like '2020-07%'
    group by 1) foo;
