-- Q10. 2020년 7월 요일별 Revenue를 구해주세요. 어느 요일의 Revenue가 가장 높고 어느 요일이 Revenue가 가장 낮나요?
-- 요일별 Revenue를 구하는 문제로 group by를 이용하여 요일별로 구매금액을 그룹화 한 뒤에
-- 이를 서브쿼리로 두고, 다시 메인쿼리에서 요일을 group by 해야만 요일별 Revenue를 온전히 구할 수 있다.
-- 메인쿼리에서 group by를 하지 않고 avg를 구할 경우 모든 요일이 합쳐지게 되어 원하는 결과가 나오지 않는다.
-- 서브쿼리에서 group by를 사용하요 메인쿼리에서도 group by를 사용하였기 때문에 소제목을 group by in group by라고 써보았는데, 영어 실력이 부족하여 정확한 표현은 아니다.

select date_at, avg(sum)
from (select date_format(purchased_at - interval 9 hour, "%a") as date_at, sum(price) as sum
from tbl_purchase
where purchased_at >= '2020-07-01'
	and purchased_at < '2020-08-01'
group by 1)foo
group by 1;
