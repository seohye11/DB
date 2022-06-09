SELECT t1.empno,
       t1.ename,
       t1.job,
       t1.mgr,
       t1.hiredate,
       t1.comm,
       t1.sal,
       t1.deptno
FROM emp t1
WHERE t1.ename LIKE '%S'
;

