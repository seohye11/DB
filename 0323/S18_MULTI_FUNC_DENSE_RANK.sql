--DENSE_RANK함수 : 동일한 순위를 하나의 건수로 취급

SELECT empno,
       ename,
       sal,
       deptno,
       RANK() OVER(ORDER BY sal DESC) "RANK_DESC",
       DENSE_RANK() OVER(ORDER BY sal DESC) "DENSE_DESC"
FROM emp
;