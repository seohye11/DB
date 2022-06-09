SELECT t1.empno, 
       t1.ename,
       t1.job,
       t1.sal,
       t2.deptno,
       t2.dname,
       t2.loc
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
AND t1.deptno = 20
AND t1.sal <= (SELECT AVG(NVL(sal,0))
               FROM emp);