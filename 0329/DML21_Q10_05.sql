SELECT *
FROM CHAP10HW_emp t1, CHAP10HW_SALGRADE t2
WHERE t1.sal BETWEEN t2.losal AND t2.hisal;

SELECT t1.empno,t2.grade
FROM CHAP10HW_emp t1, CHAP10HW_SALGRADE t2
WHERE t1.sal BETWEEN t2.losal AND t2.hisal
AND t2.grade = 5;

DELETE FROM CHAP10HW_emp
WHERE empno IN (SELECT t1.empno
                FROM CHAP10HW_emp t1, CHAP10HW_SALGRADE t2
                WHERE t1.sal BETWEEN t2.losal AND t2.hisal
                AND t2.grade = 5);
                
SELECT * 
FROM CHAP10HW_emp;