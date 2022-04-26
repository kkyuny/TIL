--1
select student_no as 학번, student_name as 이름, entrance_date as 입학년도
from tb_student
where department_no = '002'
order by 1;

--2 
select professor_name, professor_ssn
from tb_professor
where length(professor_name) != 3;

--3
select professor_name 교수이름, 122-substr(professor_ssn,1,2) 나이
from tb_professor
where substr(PROFESSOR_SSN, 8, 1) = 1
order by 2;

--4
select substr(professor_name, 2) as 이름
from tb_professor;
