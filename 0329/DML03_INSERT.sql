--INSERT�� ����

--1) �÷����� ������ �� ����ġ
INSERT INTO dept_temp(deptno,dname,loc)
VALUES(50,'DETABASE');--SQL ����: ORA-00947: ���� ���� ������� �ʽ��ϴ�

INSERT INTO dept_temp(deptno,dname)
VALUES(50,'DATEBASE','SEOUL');--SQL ����: ORA-00913: ���� ���� �ʹ� �����ϴ�

--2) ���ڰ� �Էµ� �ڸ��� ���� �Է�
INSERT INTO dept_temp(deptno,dname,loc)
VALUES('FAIL','DATEBASE','SEOUL');--ORA-01722: ��ġ�� �������մϴ�