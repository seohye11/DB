--SINGLE 컬럼에서 DISTINCT
--SELECT DISTINCT deptno
--FROM emp
--;

--컬럼이 2개인 경우 : 컬럼 조합엥서 유일한 데이터 출력
--SELECT DISTINCT job,
--       deptno
--FROM emp
--;

SELECT DISTINCT job,
       deptno
FROM emp
ORDER BY 1,2
;