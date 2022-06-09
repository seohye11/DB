--NVL(COL1,COL2,COL3)
--COL1 값이 null이 아니면 COL2
--COL1값이 null이면 COL3

SELECT empno,
       ename,
       comm,
       NVL2(comm,'o','x') AS "NVL2",
       NVL2(comm, sal*12+comm, sal*12) as "anual_sal"
FROM emp
;