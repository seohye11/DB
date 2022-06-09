SELECT t1.name as prof_name,
       TO_CHAR(t1.hiredate,'YYYY-MM-DD') as hiredate,
       t2.dname as dept_name
FROM professor t1, department t2
WHERE t1.deptno = t2.deptno
AND t1.hiredate > (SELECT hiredate
                   FROM professor
                   WHERE name = 'Meg Ryan');