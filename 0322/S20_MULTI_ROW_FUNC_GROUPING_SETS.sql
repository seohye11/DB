SELECT grade, deptno1, COUNT(*)
FROM student
GROUP BY GROUPING SETS(grade, deptno1)
;
--하나의 테이블에 대해 여러그룹 함수가 사용된다면 GROUPING SETS함수 활용