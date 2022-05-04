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
select round(avg(point),1)
from TB_STUDENT ts join TB_GRADE tg
on ts.STUDENT_NO = tg.STUDENT_NO
where ts.DEPARTMENT_NO = '059'
group by substr(term_no, 1, 4);
-- 년도별 평점을 구하는 sql문장이지만, 평점만 나올 뿐 학생의 정보의 출력은 현재로서는 방법이 떠오르지 않는다.

--23
SELECT td.department_name 학과이름, ts.student_name 학생이름, tp.professor_name 지도교수이름
FROM TB_STUDENT TS 
JOIN TB_DEPARTMENT TD
ON TS.DEPARTMENT_NO = TD.DEPARTMENT_NO
JOIN TB_PROFESSOR TP
ON TS.COACH_PROFESSOR_NO = TP.PROFESSOR_NO
where TS.STUDENT_NO = 'A313047';

--24
select student_name, term_no, class_name
from tb_student
join tb_grade using (student_no)
join tb_class USING (department_no)
where CLASS_NAME = '인간관계론'
and substr(TERM_NO,1,4) = '2007';

--25 좀 어렵네 이해를 잘 못했음!
select class_name, department_name
from tb_class
join tb_department USING (DEPARTMENT_NO)
left join tb_class_professor using(class_no)
where tb_department.category = '예체능'
and professor_no is null;

--26
select student_name, 
NVL(professor_name, '지도교수 미지정')
from tb_student ts
join TB_DEPARTMENT td using(department_no)
left join TB_PROFESSOR tp 
on ts.COACH_PROFESSOR_NO = tp.PROFESSOR_NO
where td.DEPARTMENT_NAME = '서반아어학과';
