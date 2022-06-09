-- >ANY : 서브 쿼리 결과 중에서 최소값을 반환
-- <ANY : 서브 쿼리 결과 중에서 최대값을 반환
-- <ALL : 서브 쿼리 결과 중에서 최소값을 반환
-- >ALL : 서브 쿼리 결과 중에서 최대값을 반환
SELECT name,
       grade,
       weight
FROM student
WHERE weight < ALL(SELECT weight
                   FROM student
                   WHERE grade = 2);
