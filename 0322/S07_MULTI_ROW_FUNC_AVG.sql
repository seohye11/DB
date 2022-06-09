--AVG함수 : 입력된 값들의 평균 값을 구하는 함수
--AVG([DISTINCT,ALL])
--OVER(분석을 위한 여러 문법)

--NULL에 데이터 누락 : 평균오류
SELECT COUNT(comm),
       SUM(comm),
       AVG(comm)
FROM emp
;

SELECT COUNT(*),
       SUM(comm),
       AVG(NVL(comm,0))--NULL처리 필요
FROM emp
;