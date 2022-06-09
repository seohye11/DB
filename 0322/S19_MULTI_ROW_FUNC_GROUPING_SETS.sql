--GROUPING SETS함수 : 같은 수준의 그룹화 열이 여러개일 때 열 별 그룹화를
--통해 결과 값을 출력하는 데 사용
--그룹핑 조건이 여러 개일 경우 유용하게 사용 가능

--SELECT
--FROM
--WHERE
--GROUP BY GROUPING SETS(컬럼)

SELECT grade, COUNT(*)
FROM student
GROUP BY grade
UNION
SELECT deptno1, COUNT(*)
FROM student
GROUP BY deptno1
;