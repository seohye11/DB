--student 테이블에서 아래와 같이 1전공이 101번인 학생들의 이름과 주민을 
--출력하되 주민의 뒤 7자리는 '-'과 '/'로 표시
SELECT name,
       jumin,
       REPLACE(jumin,SUBSTR(jumin,7),'-/-/-/-') "REPLACE"
FROM student
WHERE deptno1 = 101
;