--EQUI Join(�����) : ���� ���̺��� �����͸� ������ �� ���� �������� 
--�˻��ؼ� ������ ������ ���� �����͸� ���� ���̺��� �������� ���
--������) '='

--emp���̺�� dept ���̺��� ��ȸ

--oracle join
SELECT t1.empno,
       t1.ename,
       t2.dname
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
;

--ANSI join
--INNER JOIN : ���� ����
--ON������ ���� ����
SELECT t1.empno,
       t1.ename,
       t2.dname,
       t2.deptno
FROM emp t1 INNER JOIN dept t2
ON t1.deptno = t2.deptno
;
