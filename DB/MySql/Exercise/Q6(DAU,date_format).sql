-- Q6. 2020년 7월의 평균 DAU를 구해주세요, Active User수가 증가하는 추세인가요?
-- DAU(daily active user): 일별로 활동하는 유저의 수
-- date_format: 날짜를 내가 원하는 형식으로 변환하여 결과 값을 출력

--일 별로 활동중인 user수를 count하는 쿼리문
select date_format(visited_at  - interval 9 hour, '%Y-%m-%d'),count(distinct customer_id)
from tbl_visit
where visited_at like '2020-07%'
group by 1;

--7월 한달간 하루 평균 방문객 수를 구하는 쿼리문
select avg(visited_count)
from (select date_format(visited_at  - interval 9 hour, '%Y-%m-%d'), count(distinct customer_id) as visited_count
from tbl_visit
where visited_at like '2020-07%'
group by 1) foo;

--일 별로 활동중인 user수와 7월 한달간 평균 하루 방문객을 비교한다면 방문객의 추세를 확인해 볼 수 있다.
