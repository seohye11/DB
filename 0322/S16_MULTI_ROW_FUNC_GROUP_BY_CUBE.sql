--CUBE : 소계 출력
--SELECT
--FROM
--WHERE
--GROUP BY CUBE(그룹화 열 지정)

SELECT deptno, job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY deptno, job
UNION ALL
SELECT deptno, null as job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY deptno
UNION ALL
SELECT null deptno, job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY job
UNION ALL
SELECT null deptno, null as job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
ORDER BY deptno, job
;
--deptno그룹집계
--job그룹집계
--deptno, job 그룹집계
--전체그룹집계