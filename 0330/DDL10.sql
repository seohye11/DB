--DDL(Data Definition Language) : ��ɾ �������ڸ��� ������ ���̽��� �ٷ�  �ݿ�
--CREATE(����),ALTER(����),TRUNCATE(�߶󳻱�),DROP(����)

--CREATE : �����ͺ��̽� ��ü�� �����ϴµ� ����ϴ� ��ɾ�
--CREATE TABLD ���� ����.���̺� �̸�(
--      ��1�̸� ��1�ڷ���,
--      ��2�̸� ��2�ڷ���,
--      ��3�̸� ��3�ڷ���,...)

--EMP_DDL ���̺� ����
CREATE TABLE scott.emp_ddl(--scott�� ��������
empno NUMBER (4),
ename VARCHAR2 (10),
job VARCHAR2 (9),
mgr NUMBER (4),
hiredate DATE,
sal NUMBER (7,2),
comm NUMBER (7,2),
deptno NUMBER (2)
);

--���̺� ���� Ȯ��
DESC emp_ddl;

--TABLE COMMENT
COMMENT ON TABLE emp_ddl IS '���';

--COLUMN COMMENT
COMMENT ON COLUMN emp_ddl.empno IS '���';
COMMENT ON COLUMN emp_ddl.ename IS '�̸�';
COMMENT ON COLUMN emp_ddl.job IS'����';
COMMENT ON COLUMN emp_ddl.mgr IS '�Ŵ���';
COMMENT ON COLUMN emp_ddl.hiredate IS '�Ի���';
COMMENT ON COLUMN emp_ddl.sal IS '�޿�';
COMMENT ON COLUMN emp_ddl.comm IS '����';
COMMENT ON COLUMN emp_ddl.deptno IS '�μ���ȣ';