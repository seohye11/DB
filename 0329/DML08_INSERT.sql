--서브쿼리를 사용하여 한 번에 여러 데이터 추가하기
INSERT INTO emp_temp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
)SELECT t1.empno,
        t1.ename,
        t1.job,
        t1.mgr,
        t1.hiredate,
        t1.sal,
        t1.comm,
        t1.deptno
FROM emp t1, salgrade t2
WHERE t1.sal BETWEEN t2.losal AND t2.hisal
AND t2.grade = 1;

SELECT * FROM emp_temp;