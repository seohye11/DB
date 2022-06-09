SELECT t1.ename,
       t2.dname,
       TO_CHAR(t1.hiredate,'YYYY/MM/DD') as hiredate,
       t2.loc,
       TO_CHAR(t1.sal,'$999,999') as sal,
       t3.grade
FROM emp t1 JOIN dept t2
ON  t1.deptno = t2.deptno
JOIN salgrade t3
ON   t1.sal > t3.losal 
and t1.sal < t3.hisal
order by sal DESC
; 
select * from dept;