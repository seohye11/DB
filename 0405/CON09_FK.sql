--dept_fk�� 10�� �μ� ����
DELETE FROM dept_fk
WHERE deptno = 10;
--���Ἲ ��������(SCOTT.EMPFK_DEPTNO_FK)�� ����Ǿ����ϴ�- �ڽ� ���ڵ尡 �߰ߵǾ����ϴ�
--�ڽ� ���ڵ忡 ������ ������ �θ�Ű ������ ���� �Ұ���

--1. emp_fk(�ڽ�) ���̺�� ���� deptno = 10�� ������ ���� �� 
--dept_fk(�θ�) ���̺��� deptno = 10�� ������ ����
--=

-- * parent ���̺�� �ڽ����̺� ���� ������ ���� ó��
--1) �� ������ ����
--CONSTRAINT[���������̸�]REFERENCES ���� ���̺�(�����÷�)
--ON DELETE CASCADE;

--2)�� �����͸� NULL�� ����
--CONSTRAINT[���������̸�]REFERENCES ���� ���̺�(�����÷�)
--ON DELETE SET NULL;