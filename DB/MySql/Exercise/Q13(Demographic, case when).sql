-- Q13. 전체 유저의 Demographic(인구 통계)을 알고 싶어요. 성/연령별로 유저 숫자를 알려주세요
-- 어느 세그먼트가 가장 숫자가 많나요? 참고로 기타 성별은 하나로, 연령은 5세 단위로 적당히 묶어주시고 숫자가 높은 순서대로 보여주세요
select gender, count(gender)
from tbl_customer
group by 1;
-- 각 성별에 대한 숫자를 count 한다.


select case when length(gender) < 1 then 'Others'
	else gender end as gender,
    case when age <= 15 then '15세 이하'
		when age <= 20 then '20세 이하'
		when age <= 25 then '25세 이하'
        when age <= 30 then '30세 이하'
        when age <= 35 then '35세 이하'
        when age <= 40 then '40세 이하'
        when age <= 45 then '45세 이하'
        when age <= 50 then '50세 이하'
        when age > 50 then '50세 초과'
        end as age,
        count(*) as 수
from tbl_customer
group by 1, 2
order by  3 desc;

-- case when 을 이용하여 값을 구한 쿼리문으로써,
-- case when 문을 오랜만에 사용해보니 사용법이 헷깔렸었다.
-- select case when 조건문 then '출력할 결과값' end as 별칭의 형식으로 사용하면 된다.






