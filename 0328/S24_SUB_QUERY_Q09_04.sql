SELECT t1.empno,
       t1.ename,
       t1.sal,
       t2.grade
FROM emp t1, salgrade t2
WHERE t1.sal >= t2.losal
AND t1.sal <= t2.hisal
AND t1.sal > (SELECT MAX(sal)
              FROM emp
              WHERE job = 'SALESMAN');
              
SELECT t1.empno,
       t1.ename,
       t1.sal,
       t2.grade
FROM emp t1, salgrade t2
WHERE t1.sal >= t2.losal
AND t1.sal <= t2.hisal
AND t1.sal > ALL (SELECT sal
                  FROM emp
                  WHERE job = 'SALESMAN')
ORDER BY empno;
