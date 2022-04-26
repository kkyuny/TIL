--6
select student_ssn 주민번호, student_name 이름
from tb_student
where STUDENT_NAME like '김%'
and substr(STUDENT_SSN,1,2) = '80'
and substr(STUDENT_SSN,8,1) = '2';

--7
select department_name 학과이름, capacity 현재정원,
case 
when capacity >=40 then '대강의실'
when capacity >=30 then '중강의실'
when capacity >=20 then '소강의실' end 강의실크기
from tb_department
where category = '예체능'
order by 2 DESC;

--8
select department_no 학과번호, student_name 학생이름, 
coach_professor_no 지도교수번호, 20 || substr(entrance_date,1,2) || '년'
from tb_student
where STUDENT_ADDRESS is null
and to_char(entrance_date, 'YYYY') between 2005 and 2007
and substr(STUDENT_SSN,8,1) = 1
order by 4;
