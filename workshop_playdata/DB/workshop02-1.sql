--1
select student_no as 학번, student_name as 이름, entrance_date as 입학년도
from tb_student
where department_no = '002'
order by 1;

--2 
select professor_name, professor_ssn
from tb_professor
where length(professor_name) != 3;
