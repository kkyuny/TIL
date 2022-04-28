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
select professor_name, professor_ssn
from tb_department tb, tb_professor tp
where tb.department_no = tp.DEPARTMENT_NO
and tb.DEPARTMENT_NAME = '법학과'
order by tp.PROFESSOR_SSN;

--19
select class_name, department_name
from tb_class tc, tb_department td
where tc.department_no = td.DEPARTMENT_NO;
