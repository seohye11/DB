--���̺� NULL������ �Է�
--NULL�� ��������� ���

--�μ���ȣ : 70
--�μ��� : 'WEB'
--���� : NULL

INSERT INTO dept_temp VALUES(70,'WEB',NULL);

SELECT * FROM dept_temp;

--�μ���ȣ : 80
--�μ��� : 'MOBILE'
--���� : '' --���ڿ� ������ NULL�Է�

INSERT INTO dept_temp(deptno,loc,dname)--�����ٲ㵵 ����
VALUES(80,'','MOBILE');

SELECT * FROM dept_temp;

--�μ���ȣ : 90
--�μ��� : NULL
--���� : 'INCHEON'

INSERT INTO dept_temp (deptno,loc) 
VALUES(90,'INCHEON');

SELECT * FROM dept_temp;