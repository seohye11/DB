SELECT empno,
       ename,
       sal,
       TRUNC(sal/21.5,2) AS DAY_PAY,
       ROUND(sal/21.5/8,1) AS TIME_PAY
FROM emp
;

SELECT empno,
       ename,
       sal,
       TO_CHAR(TRUNC(sal/21.5,2),'$9,999.99') AS DAY_PAY,
       TO_CHAR(ROUND((sal/(21.5*8)),1),'$9,999.9') AS TIME_PAY
FROM emp
;