--VIEW : ������ ���̺�
-- ���� ���̺��� �����Ͱ� ��������� VIEW���� �����Ͱ� ���� ���̺�
-- ���� �����͸� �ҷ����� SQL Query�� ����
--VIEW�뵵
--1)����
--2)����� ���Ǽ�

--VIEW���� ����
--CREATE [OR REPALCE][FORSE | NOFORSE]VIEW view�̸� (�� �̸�1,���̸�2..)
--AS(sub-query)
--[with check option [constraint ��������]]
--[with read only]

--OR REPLACE : ���� �̸��� View�� �ִ� ��� ���� �� �ٽ� ����
--FORSE : ���� ���̺��� ���� ���ο� ��� ���� View����
--NORFORSE : ���� ���̺��� ������ ��� View����(default)
--���̸� : �⺻ ���̺� �÷�(sub-query)�÷� �̸��� �ٸ��� ������ view�÷� �̸�
--with check option : �־��� ���� ���ǿ� �´� �����͸� �Է� �� ���� ���
--with read only : SELECT�� ������ �б� ���� View

CREATE OR REPLACE VIEW vw_emp20
AS (SELECT empno, ename, job, deptno
    FROM emp
    WHERE deptno = 20)
;

SELECT * 
FROM vw_emp20;