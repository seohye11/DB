--ROLLUP(A,B,C) = (3+1)총 4건의 소계
--CUBE(A,B,C) = (2의3승)총 8건의 소계

--deptno별로 그룹화 한 후 ROLLUP함수에 job지정
SELECT deptno, job, COUNT(*)
FROM emp
GROUP BY deptno, ROLLUP(job)
;

SELECT deptno, job, COUNT(*)
FROM emp
GROUP BY job, ROLLUP(deptno)
;