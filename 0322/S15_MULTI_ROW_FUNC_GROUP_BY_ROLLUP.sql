--ROLLUP(순서중요) 순서 달라지면 값이 달라짐

SELECT deptno, job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY ROLLUP(deptno, job)
;
--1 DEPTNO, 그룹 집계
--2 DEPTNO, JOB 그룹 집계
--3 전체 그룹 집계