-- Q5. 7월에 가장 많이 구매한 고객 Top3와 Top10~15 고객을 뽑아주세요
-- limit은 쿼리문의 가장 하단에 사용하여 출력된 결과를 limit 의 수 만큼만 결과 값을 출력한다.
select sum(price)
from tbl_purchase
group by customer_id
order by 1 desc
limit 15;

select sum(price)
from tbl_purchase
group by customer_id
order by 1 desc
limit 5 offset 10;
-- offset은 offset의 수 만큼 결과를 제외한 후 값을 출력한다.
-- offset과 limit을 함께 사용하면 offset이 진행 후 limit이 실행된다.
