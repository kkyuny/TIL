--6
select student_ssn 주민번호, student_name 이름
from tb_student
where STUDENT_NAME like '김%'
and substr(STUDENT_SSN,1,2) = '80'
and substr(STUDENT_SSN,8,1) = '2';

