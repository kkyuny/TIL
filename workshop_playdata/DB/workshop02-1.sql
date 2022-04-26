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

--5
select student_no, student_name
from tb_student
where substr(entrance_date,1,2) + 100 - substr(student_ssn, 1, 2) >= 20;

--6
select student_no, student_name, substr(entrance_date,1,2) + 100 - substr(student_ssn, 1, 2) 나이
from tb_student
where substr(entrance_date,1,2) + 100 - substr(student_ssn, 1, 2) >= 20
and substr(entrance_date,1,2) + 100 - substr(student_ssn, 1, 2) <= 100;

--8
select student_no, student_name
from tb_student
where student_no not like 'A%';

--9
select round(avg(point),1) 평점
from tb_grade
where student_no = 'A517178'
group by STUDENT_NO;

--10
select department_no 학과번호, count(STUDENT_NO) 학생수
from tb_student
GROUP BY DEPARTMENT_NO
order by 1;

--11
select count(student_no)
from tb_student
where COACH_PROFESSOR_NO is null;

--12
select substr(term_no, 1,4) 년도, round(avg(point),1) "년도 별 평점"
from tb_grade
where STUDENT_NO = 'A112113'
group by substr(term_no, 1, 4)
order by 1;

--13 null도 count 하는 방법의 추가가 필요함
select department_no 학과코드명, count(student_no) 휴학생수
from tb_student
where ABSENCE_YN = 'Y'
GROUP BY DEPARTMENT_NO;

--14
select student_name 동일이름, count(student_no)
from tb_student
GROUP by STUDENT_NAME
having count(STUDENT_NAME) > 1;
