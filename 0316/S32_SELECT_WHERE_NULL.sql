--NULL + 4000 -> NULL
--NULL > 100 -> NULL
--무한대 + NULL -> NULL
--SELECT empno,
--       ename,
--       sal,
--       sal*12+NVL(comm,0) anual_sal_comm,
--       comm
--FROM emp
--;

--SELECT empno,
--       ename,
--       sal,
--       comm
--FROM emp
--WHERE comm IS NULL
--;

--comm이 null이 아닌 데이터
SELECT empno,
       ename,
       sal,
       comm
FROM emp
WHERE comm IS NOT NULL
;

