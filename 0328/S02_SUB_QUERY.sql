SELECT t1.name as stud_name,
       t2.dname as dept_name,
       t1.deptno1
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
AND t1.deptno1 = (SELECT deptno1
                  FROM student
                  WHERE name = 'Anthony Hopkins');
             
