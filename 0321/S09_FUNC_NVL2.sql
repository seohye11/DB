--NVL(COL1,COL2,COL3)
--COL1 ���� null�� �ƴϸ� COL2
--COL1���� null�̸� COL3

SELECT empno,
       ename,
       comm,
       NVL2(comm,'o','x') AS "NVL2",
       NVL2(comm, sal*12+comm, sal*12) as "anual_sal"
FROM emp
;