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

--04
SELECT student_name
FROM tb_student
where student_no in ('A513079','A513090','A513091',
                    'A513110','A513119');

--05
SELECT department_name, category
FROM tb_department
where capacity between 20 and 30;

SELECT department_name, category
FROM tb_department
where capacity >= 20 and capacity <= 30;

--06
SELECT professor_name
FROM tb_professor
where department_no is null;

--07
SELECT student_no
FROM tb_student
where department_no is null;

--08 
SELECT class_no
FROM tb_class
where PREATTENDING_CLASS_NO is not null;

--09
SELECT category
FROM tb_department
GROUP BY category;

SELECT distinct category
FROM tb_department;

--10
SELECT student_no, student_name, student_ssn, STUDENT_ADDRESS
FROM tb_student
where substr(student_no, 1, 2) = 'A2'
and substr(STUDENT_ADDRESS, 1, 2) ='전주';

SELECT student_no, student_name, student_ssn, STUDENT_ADDRESS
FROM tb_student
where ENTRANCE_DATE LIKE '02%'
and STUDENT_ADDRESS LIKE '전주%';
