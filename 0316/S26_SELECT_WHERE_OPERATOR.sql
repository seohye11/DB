-- OR연산자를 사용하여 여러 개 조건을 만족하는 데이터 출력
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