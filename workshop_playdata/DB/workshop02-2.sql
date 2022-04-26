--1
select department_no
from TB_DEPARTMENT
where DEPARTMENT_NAME = '사학과'; -- 003
select count(student_no)
from tb_student
where DEPARTMENT_NO = '003'
and substr(ENTRANCE_DATE,1,2) = '01';

--2
select category 계열, department_name 학과이름, capacity 정원
from tb_department
where CATEGORY = '공학'
and CAPACITY between 20 and 30;

--3
select category 계열, count(department_no)
from TB_DEPARTMENT
where CATEGORY like '%학%'
group by CATEGORY;

--4
select department_no
from tb_department
where DEPARTMENT_NAME = '영어영문학과'; -- 002

select professor_name 교수이름, substr(professor_ssn,1,2) 출생년도, professor_address 주소
from tb_professor
where DEPARTMENT_NO = '002'
order by 2;

--5
select department_no
from tb_department
where DEPARTMENT_NAME = '국어국문학과'; -- 001

select department_no 학과번호, student_name 학생이름, 
case absence_yn 
when 'Y' then '정상'
when 'N' then '휴학' end 휴학여부
from tb_student
where DEPARTMENT_NO = '001'
and substr(STUDENT_ADDRESS,1,2) = '서울';
