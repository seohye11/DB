--���̺� ����
CREATE TABLE dept(
    deptno NUMBER(4) CONSTRAINT PK_DEPT PRIMARY KEY,
    dname VARCHAR2(30),
    loc VARCHAR2(50)
);

DESC dept;

INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');

--��ȸ
SELECT * FROM dept;