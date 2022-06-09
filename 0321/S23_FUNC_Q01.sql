SELECT empno,
       REPLACE(empno,SUBSTR(empno,3,4),'**') AS MASKING_EMPNO,
       ename,
       REPLACE(ename,SUBSTR(ename,2),'****') AS MASKING_EMPNO
FROM emp
WHERE LENGTH(ename) = 5
;

SELECT empno,
       RPAD(SUBSTR(empno,1,2),4,'**') AS MASKING_EMPNO,
       ename,
       RPAD(SUBSTR(ename,1,1),LENGTH(ename),'*****') AS MASKING_EMPNO
FROM emp
WHERE LENGTH(ename) >= 5
AND LENGTH(ename) < 6
;