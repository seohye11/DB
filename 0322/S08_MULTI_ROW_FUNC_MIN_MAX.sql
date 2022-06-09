--MAX,MIN함수 : 최대값과 최소값을 구하는 함수
--MAX,MIN([DISTINCT,ALL])
--OVER(분석을 위한 여러 문법)
--원리 : 데이터를 순서대로 정렬, 그중 최대,최소 추출

SELECT MAX(sal), MIN(sal)
FROM emp
;

SELECT MAX(hiredate),
       MIN(hiredate)
FROM emp
;