--�μ��� ��å�� �ְ� �޿�
SELECT deptno, job, MAX(sal)
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job
;

SELECT * FROM (SELECT deptno, job, sal FROM emp)
PIVOT( MAX(sal)FOR deptno IN(10,
                             20,
                             30)
)
;

SELECT * FROM (SELECT job, deptno, sal FROM emp)
PIVOT( MAX(sal)FOR deptno IN(CLERK,
                             SALESMAN,
                             ANALYST,
                             MANAGER,
                             PRESIDENT)
)
;