--조인 조건과 검색조건
--student 테이블을 조회하여 1전공(deptno1)이 101번인 학생들의 이름과
--각 학생들의 지도교수 번호와 지도교수 이름을 출력하세요.

--oracle join
SELECT t1.name as STU_NAME,
       t2.name as PROF_NAME
FROM student t1, professor t2
WHERE t1.profno = t2.profno
AND t1.deptno1 = 101
;

--ANSI join
SELECT t1.name as STU_NAME,
       t2.name as PROF_NAME
FROM student t1 JOIN professor t2
ON t1.profno = t2.profno
WHERE t1.deptno1 = 101 --WHERE = AND
;