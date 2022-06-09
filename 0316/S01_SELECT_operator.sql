--emp 사원들의 이름, 월급, 연봉, 수당
--연봉 : 월금 * 12 + 수당
SELECT ename, sal*12+comm, sal, comm
FROM emp
;
-- sal*12+comm 데이터가 없는 이유는 comm NULL 연산으로 
--null 값을 알 수 없음