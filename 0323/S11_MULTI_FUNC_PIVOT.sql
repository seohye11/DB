--FOR절의 가로줄에 표기할 열
--IN절에 출력하려는 열데이터를 지정
SELECT * FROM (SELECT deptno, job, sal FROM emp)
PIVOT( MAX(sal)FOR job IN('CLERK' AS CLERK,
                          'SALESMAN' AS SALESMAN,
                          'ANALYST' AS ANALYST,
                          'MANAGER' AS MANAGER,
                          'PRESIDENT' AS PRESIDENT)
)
;