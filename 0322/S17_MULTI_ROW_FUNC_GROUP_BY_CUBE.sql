SELECT deptno, job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY CUBE(deptno, job)
ORDER BY deptno, job
;
--deptno그룹집계
--job그룹집계
--deptno, job 그룹집계
--전체그룹집계