-- Q3. 7월에 우리 Active 유저의 구매율(Paying Rage)은 어떻게 되나요?
-- Paying Rage: 중복을 제외한 전체 visit 유저 중 purchase가 진행된 user를 구한다.
--  -> (select count(distinct customer_id) from tbl_visit where visited_at like '2020-07%')

select count(distinct A.customer_id) / (select count(distinct customer_id) from tbl_visit where visited_at like '2020-07%')
from tbl_visit as A
left join tbl_purchase as B
on A.customer_id = B.customer_id
where purchased_at is not null
	and visited_at like '2020-07%';
