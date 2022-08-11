-- Q14. Q13 결과의 성/연령을 "남성(25-29세)와 같이 통합해주시고,
-- 각 성/연령이 전체 고객에서 얼마나 차지하는지 비율과 분포를 높은 순서대로 알려주시오
select concat(case when gender='F' then '여성'
				when gender='M' then '남성'
				when length(gender) < 1 then '기타'
                else '기타' end, "(", age, ")") as result, counts, 
	concat(round((counts / (select count(*) from tbl_customer)) * 100, 2), '%') as rate
from (select case when length(gender) < 1 then 'Others'
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
        count(*) as counts
from tbl_customer
group by 1, 2
order by  3 desc) foo;

-- concat을 사용하다보니 group by가 잘 되지않아 서브쿼리를 이용하여 문제를 해결하였다.
-- concat을 사용 후 group by을 사용하려면 concat으로 묶여져 있는 row 자체가 group by가 되어 실행되며 쿼리문은 아래와 같다.
select concat(case when length(gender) < 1 then '기타' 
	   when gender = "Others" then "기타"
       when gender = "M" then "남성"
       when gender = "F" then "여성"
	   end
 , "("
 , case when age <= 15 then '15세 이하'
		when age <= 20 then '16-20세'
        when age <= 25 then '21-25세'
        when age <= 30 then '26-30세'
        when age <= 35 then '31-35세'
        when age <= 40 then '36-40세'
        when age <= 45 then '41-45세'
        when age >= 46 then '46세 이상'
        end
        , ")") as '결과' 
 , round(count(*)/(select count(*) from tbl_customer),3) as 비율 
from tbl_customer
group by 1
order by 2 desc;

-- group by 1을 통하여 concat 안의 모든 row가 group by 되는 것이다.
