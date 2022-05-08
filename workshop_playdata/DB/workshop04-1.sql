--34 
update tb_department
set capacity = capacity*1.1;

rollback;

--35
update tb_student
set STUDENT_ADDRESS = '서울시 종로구 숭인동 181-21'
where STUDENT_NO = 'A413042';

rollback;
