--29
CREATE TABLE TB_CATEGORY2
(
  NAME VARCHAR2(10),
  USE_YN CHAR(1) DEFAULT 'Y'
);

DROP TABLE TB_CATEGORY2;

--30
create table tb_class_type2
(
  no varchar2(5) primary key,
  name varchar2(10)
);
DROP TABLE tb_class_type2;


--32
alter table tb_category
modify (name not null);

--33
alter table tb_class_type
modify (no varchar2(15), name varchar2(20));
