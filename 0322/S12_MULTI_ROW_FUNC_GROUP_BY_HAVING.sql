--HAVING : GROUP BY 절에 조건을 줄 때 사용
--SELECT 문에 GROUP BY절이 존재할 때만 사용 가능
--그리고 GROUP BY절을 통해 그룹화된 결과 값의 범위를 제한하는데 사용
--SELECT
--FROM
--WHERE
--GROUP BY 그룹화할 열지정(여러개지정)
--HAVING 출력 그룹을 제한하는 조건식
--ORDER BY       =>where절은 출력 대상 행을 제한하고 
--                 HAVING절은 그룹화된 대상을 출력에서 제한한다
               

--emp테이블에서 평균 급여가 2000만원 이상인 부서의 부서번호 평균 급여 출력
SELECT deptno, AVG(NVL(sal,0))
FROM emp
WHERE AVG(NVL(sal,0)) >= 2000
GROUP BY deptno
;--WHERE 사용 안됨 오류

SELECT deptno, AVG(NVL(sal,0))
FROM emp
GROUP BY deptno
HAVING AVG(NVL(sal,0)) >= 2000
;