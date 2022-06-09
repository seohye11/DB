--oracle join
SELECT t1.*,
       t2.dname
FROM(
    SELECT deptno,
           TRUNC(AVG(NVL(sal,0)))as AVG_SAL,
           MAX(NVL(sal,0)) as max_sal,
           MIN(NVL(sal,0)) as min_sal,
           COUNT(*) as cnt
    FROM emp
    GROUP BY deptno
)t1, dept t2
WHERE t1.deptno = t2.deptno
;

--ansi join
SELECT t1.*,
       t2.dname
FROM(
    SELECT deptno,
           TRUNC(AVG(NVL(sal,0)))as AVG_SAL,
           MAX(NVL(sal,0)) as max_sal,
           MIN(NVL(sal,0)) as min_sal,
           COUNT(*) as cnt
    FROM emp
    GROUP BY deptno
)t1 JOIN dept t2
ON t1.deptno = t2.deptno
;