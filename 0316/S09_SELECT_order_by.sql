--emp 테이블의 전체 열을 부서번호(오름차순)와 급여(내림차순)로 정열
SELECT *
FROM emp
ORDER BY deptno ASC, sal DESC
;