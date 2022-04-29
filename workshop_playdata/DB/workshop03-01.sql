--16
select student_name 동명이인, count(student_name) "동명인 수"
from tb_student
group by STUDENT_NAME
HAVING count(student_name) >= 2;

--17
select student_name 이름, student_no 학번, STUDENT_ADDRESS "거주지 주소" 
from tb_student
where (STUDENT_ADDRESS like '강원%'
or STUDENT_ADDRESS like '경기도%')
and STUDENT_NO like '9%';

--18
--oracle join
select professor_name, professor_ssn
from tb_department tb, tb_professor tp
where tb.department_no = tp.DEPARTMENT_NO
and tb.DEPARTMENT_NAME = '법학과'
order by tp.PROFESSOR_SSN;

--ansi join
select professor_name, professor_ssn
from tb_department tb NATURAL JOIN tb_professor tp
where tb.DEPARTMENT_NAME = '법학과'
order by tp.PROFESSOR_SSN;

--19
--oracle join
select class_name, department_name
from tb_class tc, tb_department td
where tc.department_no = td.DEPARTMENT_NO;

--ansi join
select class_name, department_name
from tb_class tc JOIN tb_department td
on tc.department_no = td.DEPARTMENT_NO;

--20
--oracle join
select class_name, professor_name
from tb_class tc, tb_professor tp
where tc.department_no = tp.DEPARTMENT_NO;

--ansi join
select class_name, professor_name
from tb_class tc join tb_professor tp
on tc.department_no = tp.DEPARTMENT_NO;

--ansi join은 from절에 join할 테이블과 조건(using,on 등)을 함께 명시하여 사용할 수 있어 oracle join보다 가독성이 높다.
--ansi join에서 join의 조건이 없는 경우 join의 형태(natural, left 등)를 명시해야한다
