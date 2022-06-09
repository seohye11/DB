--GROUP BY절 : 결과 값을 원하는 열로 묶어 출력
--SELECT
--FROM
--WHERE
--GROUP BY
--ORDER BY

--부서별 급여 합계
SELECT SUM(sal), '10' AS deptno FROM emp WHERE deptno = 10
UNION ALL
SELECT SUM(sal), '20'  FROM emp WHERE deptno = 20
UNION ALL
SELECT SUM(sal), '30'  FROM emp WHERE deptno = 30
;

SELECT SUM(sal)
FROM emp
GROUP BY deptno
;