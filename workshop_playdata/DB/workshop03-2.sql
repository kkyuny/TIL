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


--22 
select department_no
from TB_DEPARTMENT
where department_name = '음악학과';

select ts.student_no 학번, ts.student_name "학생 이름", round(avg(point),1) "전체 평점"
from TB_STUDENT ts join TB_GRADE tg
on ts.STUDENT_NO = tg.STUDENT_NO
where ts.DEPARTMENT_NO = '059'
group by ts.student_no, ts.student_name;
--전체 평점을 구하는 문제로 group by를 간단하게 이용하여 해결할 수 있었다.
--하지만 년도별 평점 등의 다른 조건을 이용한 출력은 감이 안잡힌다.
