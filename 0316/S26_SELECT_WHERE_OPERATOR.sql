-- OR�����ڸ� ����Ͽ� ���� �� ������ �����ϴ� ������ ���
--SELECT empno,
--       ename,
--       deptno,
--       job
--FROM emp
--WHERE job = 'MANAGER'
--   OR job = 'SALESMAN'
--   OR job = 'CLEAK'
--;
SELECT empno,
       ename,
       deptno,
       job
FROM emp
WHERE job IN ('MANAGER','SALESMAN','CLERK')
;