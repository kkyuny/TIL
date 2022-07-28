-- Q2. 2020년 7월의 총 MAU를 구해주세요
-- MAU: monthly active users로써 활동중인 월간 유저수를 의미한다.
select count(visited_at)
from tbl_visit
where visited_at like '2020-07%';
