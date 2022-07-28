-- Q7. 2020년 7월의 평균 WAU를 구해주세요
-- WAU: weekly active uers
select date_format(visited_at - interval 9 hour, "%Y-%m-%U"), count(distinct customer_id)
from tbl_visit
where visited_at >= '2020-07-05'
	and visited_at < '2020-07-26'
group by 1;

-- 데이터의 정확도를 위하여 where을 이용해서 날짜의 범위를 지정해주면 된다.
-- 이 떄 유의할 점은 %U는 시작을 일요일부터하여 일주일을 구분하기 때문에,
-- %U를 사용한다면 where절의 시작 조건은 일요일에 날짜를 맞추고
-- where절의 마지막 조건은 토요일까지로 설정이 필요하다.
