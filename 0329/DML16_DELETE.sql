--서브쿼리를 사용하여 데이터 삭제

DELETE FROM emp_temp2
WHERE empno IN( SELECT t1.empno
                FROM emp_temp2 t1, salgrade t2
                WHERE t1.sal BETWEEN t2.losal AND t2.hisal
                AND t2.grade = 3
                AND t1.deptno = 30)
;

SELECT *
FROM emp_temp2;