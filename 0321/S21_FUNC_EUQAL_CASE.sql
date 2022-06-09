SELECT empno,
       ename,
       sal,
       job,
       CASE job WHEN 'MANAGER' THEN sal*1.1
                WHEN 'SALESMAN' THEN sal*1.05
                WHEN 'ANALYST' THEN sal
                ELSE sal*1.03
       END AS UP_SAL
FROM emp
;