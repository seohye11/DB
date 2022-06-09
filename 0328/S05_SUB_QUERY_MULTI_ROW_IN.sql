--다중행 서브쿼리(Multi row sub query)
-- in : 서브 쿼리와 같은 값을 찾음
-- EXISTS : SUB QUERY의 값이 있을 경우 메인 쿼리 수행
-- >ANY : 서브 쿼리 결과 중에서 최소값을 반환
-- <ANY : 서브 쿼리 결과 중에서 최대값을 반환
-- <ALL : 서브 쿼리 결과 중에서 최소값을 반환
-- >ALL : 서브 쿼리 결과 중에서 최대값을 반환

SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE deptno IN (20,30)
;