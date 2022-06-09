SELECT empno,
       ename,
       sal,
       func_aftertax(sal) AS after_tax
FROM emp
;