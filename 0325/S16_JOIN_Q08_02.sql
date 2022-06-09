SELECT DISTINCT t1.deptno,
       t2.dname,
       TRUNC(AVG(t1.sal)OVER(PARTITION BY t1.deptno)) as AVG_SAL,
       MAX(t1.sal)
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
;