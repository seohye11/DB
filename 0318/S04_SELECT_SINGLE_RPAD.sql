--emp���̺��� deptno�� 10���� ������� �̸��� ��9�ڸ��� ����ϵ�
--������ ���ڸ����� �ش� �ڸ� ���� �ش�Ǵ� ���ڰ� ���

SELECT ename,
       RPAD(ename,9,SUBSTR('123456789',LENGTH(ename)+1)) AS RPAD,
       LENGTH(ename),
       SUBSTR('123456789',LENGTH(ename)+1) AS SUBSTR
FROM emp
WHERE deptno = 10
;