--student 테이블을 조회하여 각 학년별로 초대 몸무게를 가진 학생의 학년과 이름 몸무게

SELECT grade,
       name,
       weight
FROM student
WHERE (grade, weight) IN (SELECT grade,
                                 MAX(weight)
                          FROM student
                          GROUP BY grade)
ORDER BY grade
;