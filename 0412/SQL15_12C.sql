--12c���� PK sequence
-- : DEFAULT VALUE�� sequence�� next value ���� ����

--������ ����
CREATE SEQUENCE T_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 10
NOCYCLE
;

--���̺� ����
CREATE TABLE T_SEQ_TEST
(
    no NUMBER DEFAULT T_SEQ.NEXTVAL PRIMARY KEY,
    name VARCHAR2(10)
);

