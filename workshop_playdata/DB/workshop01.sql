-- 01
SELECT DEPARTMENT_NAME, CATEGORY
FROM TB_DEPARTMENT;

-- 02
SELECT '국문학과의 정원은 ' || capacity || '명 입니다.'
FROM TB_DEPARTMENT;

-- 03
select department_no
from tb_department
where DEPARTMENT_NAME='국어국문학과';

SELECT student_name
FROM tb_student
where absence_yn = 'Y' 
and DEPARTMENT_NO = 001
and substr(student_ssn,8,1)=2;


