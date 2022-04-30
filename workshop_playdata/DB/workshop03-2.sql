--21 
select class_name, professor_name
from TB_DEPARTMENT td 
join TB_CLASS tc 
on td.DEPARTMENT_NO = tc.DEPARTMENT_NO
join TB_CLASS_PROFESSOR tcp
on tc.CLASS_NO = tcp.CLASS_NO
join TB_PROFESSOR tp
on tcp.PROFESSOR_NO = tp.PROFESSOR_NO
where td.CATEGORY = '인문사회';
-- 다소 문장이 복잡해보일 수 있다.
-- 4개의 테이블을 join하였는데 하나의 테이블에서 다른 테이블과 join을 진행하고 on절에 fk로 조건을 추가하여
-- 테이블이 이상없이 연결되도록 작성한다.
-- using절을 이용할 수 있지만 개인적으로 on절이 가독성이 좋다고 판단되어 on절을 사용하였다.
