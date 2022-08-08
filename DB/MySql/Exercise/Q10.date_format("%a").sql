-- Q10. 2020년 7월 요일별 Revenue를 구해주세요. 어느 요일의 Revenue가 가장 높고 어느 요일이
-- Revenue가 가장 낮나요?
select date_format(purchased_at - interval 9 hour, "%a") as date_at, sum(price) as sum
from tbl_purchase
where purchased_at >= '2020-07-01'
	and purchased_at < '2020-08-01'
group by 1;

select date_at, avg(sum)
from (select date_format(purchased_at - interval 9 hour, "%a") as date_at, sum(price) as sum
from tbl_purchase
where purchased_at >= '2020-07-01'
	and purchased_at < '2020-08-01'
group by 1)foo
group by 1;

-- 문제의 풀이방법은 2가지가 있다.
-- 첫 번째는 서브쿼리를 이용하는 것과 두 번째는 서브쿼리를 이용하지 않는 것이다.
-- 우선, 둘 다 같은 결과를 출력하지만 서브쿼리를 이용했을 때의 장점은 내가 원하는 데이터를
-- 조금 더 실수 없고 정확하게 조회할 수 있다는 점이 있다.
-- 따라서, 지금은 하나의 조건(요일)만을 조회하기 때문에 서브쿼리를 이용하지 않아도 되지만,
-- 여러개의 조건이 붙는 경우에는 서브쿼리를 이용하여 내가 원하는 조건을 세팅 후에 값을 조회하는 것이
-- 에러가 발생할 가능성이 낮기 때문에 서브쿼리를 이용하여 원하는 값을 조회하는 것이 좋다.
