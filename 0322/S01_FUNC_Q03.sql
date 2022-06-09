SELECT empno,
       ename,
       TO_CHAR(hiredate,'YYYY/MM/DD') AS hiredate, 
       TO_CHAR(NEXT_DAY(ADD_MONTHS(hiredate,3),'¿ù'),'YYYY-MM-DD') AS R_JOB,
       NVL2(comm,TO_CHAR(comm),'N/A') AS COMM
FROM emp
;