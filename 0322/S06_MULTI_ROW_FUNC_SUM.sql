--SUM함수 : 입력데이터들의 합계 값을 구하는 함수
--SUM([DISTINCT,ALL])
--OVER(분석을 위한 여러 문법)

SELECT SUM(ALL sal), --sal의 총 합
       SUM(DISTINCT sal), --sal 중복 데이터 제거 총 함
       SUM(sal) --SUM(sal) DEFAULT ALL
FROM emp
ORDER BY sal
;
