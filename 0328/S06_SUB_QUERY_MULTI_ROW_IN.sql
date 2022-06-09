--각 부서별 최고 급여와 동일한 급여를 받는 사원 정보
SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp t1
WHERE t1.sal IN(SELECT MAX(sal)
                FROM emp
                GROUP BY deptno);