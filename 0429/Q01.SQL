SELECT deptno,                                 
    SUM(DECODE(job,'CLERK',sal)    ) as CLERK,                                 
    SUM(DECODE(job,'MANAGER',sal)  ) as MANAGER,                                 
    SUM(DECODE(job,'PRESIDENT',sal)) as PRESIDENT,                                 
    SUM(DECODE(job,'ANALYST',sal)  ) as ANALYST,                                 
    SUM(DECODE(job,'SALESMAN',sal) ) as SALESMAN,                                 
    SUM(sal) as TOTAL                                 
FROM emp                                 
GROUP BY ROLLUP(deptno)                                 
ORDER BY deptno                                 
;                                 
