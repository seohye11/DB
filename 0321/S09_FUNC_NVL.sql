SELECT empno,
       ename,
       comm,
       NVL2(comm,'0','x') AS "NVL2"
FROM emp
;