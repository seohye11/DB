--SELECT
--FROM
--WHERE
--GROUP BY 그룹화할 열지정(여러개지정)
--ORDER BY
--GROUP BY절에 명시하는 열은 여러개 지정 가능
--먼저 지정한 열로 대그룹을 나누고 그 다음 지정한 열로 소그룹
--GROUP BY절에는 별칭이 인식되지 않는다 즉 열 이름이나 연산식을 그대로 지정해주어야 한다.

--부서별 직무별 평균 급여
SELECT deptno, job,AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job
;
