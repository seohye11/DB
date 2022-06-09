--부서별 직책별 최고 급여
SELECT deptno,
       MAX(DECODE(job,'CLERK',sal)) AS CLERK,
       MAX(DECODE(job,'SALESMAN',sal)) AS SALESMAN,
       MAX(DECODE(job,'ANALYST',sal)) AS ANALYST,
       MAX(DECODE(job,'MANAGER',sal)) AS MANAGER,
       MAX(DECODE(job,'PRESIDENT',sal)) AS PRESIDENT
FROM emp
GROUP BY deptno
ORDER BY deptno
;