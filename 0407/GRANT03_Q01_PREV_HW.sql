-- 1. ���̺� ����
CREATE TABLE dept (
    deptno NUMBER(4) CONSTRAINT PK_DEPT PRIMARY KEY,
    dname VARCHAR2(30),
    loc VARCHAR2(50)
);

desc dept;

--2. ������ ����
INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');

-- 3. ��ȸ
SELECT * FROM dept;