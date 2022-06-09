SELECT deptno,
       TRUNC(AVG(NVL(sal,0))) AS AVG_SAL,
       MAX(sal) AS MAX_SAL,
       MIN(sal) AS MIN_SAL,
       COUNT(*) AS CNT
FROM emp
GROUP BY deptno
ORDER BY deptno DESC
;