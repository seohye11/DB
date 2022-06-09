--2. Inline View 를 사용하여 아래 그림과 같이 Student 테이블과 department 테이블을 
--사용하여 학과별로 학생들의 최대 키와 최대 몸무게, 학과이름을 출력하세요.

SELECT t2.dname,
       MAX(t1.height) AS max_height,
       MAX(t1.weight) AS max_weight
FROM student t1, department t2
WHERE t1.deptno1 = t2.deptno
GROUP BY t2.dname
;
-------------------------------------------------
SELECT b.dname,
       a.max_height,
       a.max_weight
FROM(
    SELECT t1.deptno1,
           MAX(t1.height) AS max_height,
           MAX(t1.weight) AS max_weight
    FROM student t1
    GROUP BY deptno1
)a JOIN department b
ON a.deptno1 = b.deptno
;