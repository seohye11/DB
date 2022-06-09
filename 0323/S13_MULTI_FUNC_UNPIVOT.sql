--��� sal����ϰ� 
--FOR���η� �þ�߸� ���� ���� ���
SELECT *
FROM(
    SELECT deptno,
         MAX(DECODE(job,'CLERK',sal)) AS CLERK,
         MAX(DECODE(job,'SALESMAN',sal)) AS SALESMAN,
         MAX(DECODE(job,'ANALYST',sal)) AS ANALYST,
         MAX(DECODE(job,'MANAGER',sal)) AS MANAGER,
        MAX(DECODE(job,'PRESIDENT',sal)) AS PRESIDENT
    FROM emp
    GROUP BY deptno
    ORDER BY deptno
)
UNPIVOT(
   sal FOR job IN(CLERK
                 ,SALESMAN
                 ,ANALYST
                 ,MANAGER
                 ,PRESIDENT )
)
ORDER BY deptno, job
;