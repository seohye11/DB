--ename S�� �����ϴ�
--SELECT empno,
--       ename,
--       job,
--       deptno
--FROM emp
--WHERE ename LIKE 'S%'
--;

--ename S�� �����ϰ� �ִ�
--��ȸ�ӵ��� ù��° SQL�� ���� ����
SELECT empno,
       ename,
       job,
       deptno
FROM emp
WHERE ename LIKE '%S%'
;