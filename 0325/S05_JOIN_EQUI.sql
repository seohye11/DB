--학생 테이블(student)과 학과 테이블(department) , 교수 테이블(professor)을 
--Join하여 학생의 이름과 학생의 학과이름, 학생의 지도교수 이름을 출력하세요.

--oracle join
SELECT t1.name as stud_name,
       t2.name as prof_name,
       t3.dname as dept_name
FROM student t1, professor t2, department t3
WHERE t1.profno = t2.profno
AND t1.deptno1 = t3.deptno
;

--ANSI join
SELECT t1.name as stud_name,
       t2.name as prof_name,
       t3.dname as dept_name
FROM student t1 JOIN professor t2
ON t1.profno = t2.profno
JOIN department t3
ON t1.deptno1 = t3.deptno
;
-- student t1 JOIN professor t2 ON t1.profno = t2.profno으로 조인
--수행 후 나온 결과값을 가지고 department t3 ON t1.deptno1 = t3.deptno조건으로 조인수행