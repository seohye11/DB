--Student 테이블과 score 테이블 , hakjum 테이블을 조회하여
--학생들의 이름과 점수와 학점을 출력하세요.

SELECT t1.name as stud_name,
       t2.total as score,
       t3.grade as credit
FROM student t1, score t2, hakjum t3
WHERE t1.studno = t2.studno
AND t2.total BETWEEN min_point AND max_point
;

SELECT t1.name as stud_name,
       t2.total as score,
       t3.grade as credit
FROM student t1, score t2, hakjum t3
WHERE t1.studno = t2.studno
AND t2.total >= min_point
AND t2.total <= max_point
;

SELECT t1.name as stud_name,
       t2.total as score,
       t3.grade as credit
FROM student t1 JOIN score t2
ON t1.studno = t2.studno
JOIN hakjum t3
ON t2.total >= min_point
AND t2.total <= max_point
;