SELECT *
FROM CHAP10HW_emp
WHERE sal > (SELECT AVG(NVL(sal,0))
             FROM CHAP10HW_emp
             WHERE deptno = 50);

UPDATE CHAP10HW_emp
SET deptno = 70
WHERE sal > (SELECT AVG(NVL(sal,0))
             FROM CHAP10HW_emp
             WHERE deptno = 50);
             
SELECT *
FROM CHAP10HW_emp
WHERE deptno = 70;

COMMIT;
