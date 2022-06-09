 SELECT sal,
        TO_CHAR(sal,'$999,999') AS "SAL_$",
        TO_CHAR(sal,'L999,999') AS "SAL_L",
        TO_CHAR(sal,'999,999.00') AS "SAL_1",
        TO_CHAR(sal,'000,999,999.00') AS "SAL_2",
        TO_CHAR(sal,'000999,999.99') AS "SAL_3"
 FROM emp
 ;