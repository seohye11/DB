--emp���̺��� ����Ͽ� �Ʒ� ȭ��� ���� deptno�� 10���� �������
--����̸��� �� 9����Ʈ�� ����ϵ� �� �ڸ����� �ش� �ڸ��� ����
SELECT ename,
       LPAD(ename,9,'123456789') AS LPAD01
FROM emp
WHERE deptno = 10
;