--GROUP BY절 주의사항
--1. SELECT 절에 사용된 그룹함수 이외의 컬럼이나 표현식은 반드시 GROUP BY 
--절에 사용되어야 합니다. 그렇지 않을 경우 아래와 같은 에러가 발생합니다0

--GROUP BY절에 job누락 오류
SELECT deptno, job, AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY deptno
ORDER BY deptno
;

--SELECT 절에서는 GROUP BY절 컬럼 생략 가능
SELECT deptno, AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job
;

--2. GROUP BY 절에는 반드시 컬럼명이 사용되어야 하며 컬럼 Alias 는 
--사용하면 안됩니다
SELECT deptno AS NO, job, AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY no, job --group by 절에는 alias 사용 안됨
ORDER BY deptno, job
;