SELECT deptno,
       job, 
       AVG(NVL(sal,0)) as "avg"
FROM emp
GROUP BY deptno, job
ORDER BY 1,2
;

SELECT deptno,
       job, 
       AVG(NVL(sal,0)) as "avg"
FROM emp
GROUP BY deptno, job
HAVING AVG(NVL(sal,0)) >= 2000
ORDER BY 1,2
;

SELECT deptno,
       job, 
       AVG(NVL(sal,0)) as "avg"
FROM emp
WHERE sal <= 3000
GROUP BY deptno, job
HAVING AVG(NVL(sal,0)) >= 2000
ORDER BY 1,2
;