SELECT empno,
       ename,
       TO_CHAR(hiredate,'YYYY-MM-DD') AS hiredate,
       TO_CHAR((sal*12)+comm,'$999,999') AS SAL,
       TO_CHAR((((sal*12)+comm)*1.15),'$999,999') AS "15%_UP"
FROM emp
WHERE comm IS NOT NULL
;