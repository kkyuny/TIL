--34 
update tb_department
set capacity = capacity*1.1;

rollback;

--35
update tb_student
set STUDENT_ADDRESS = '서울시 종로구 숭인동 181-21'
where STUDENT_NO = 'A413042';

rollback;


--36
update tb_student
set student_ssn = substr(student_ssn,1,6);

rollback;

--37
update tb_grade
set point = 3.5
where term_no = '200501'
and student_no = 
(select student_no
from tb_student
JOIN TB_DEPARTMENT USING ( DEPARTMENT_NO)
                       WHERE STUDENT_NAME = '김명훈'
                       AND DEPARTMENT_NAME = '의학과' )
and class_no =
(select class_no
from tb_class
where class_name = '피부생리학');

rollback;

// 서브쿼리 안에 조인까지 실행하는 복잡한 문장이다.

--38
delete from tb_grade
where student_no IN
(select student_no
from tb_student
where absence_yn = 'Y');

rollback;
//서브쿼리를 IN으로 받아주어야 한다.
