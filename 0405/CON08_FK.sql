--emp_fk 테이블에 데이터 삽입

--dept_fk에 데이터가 없음->오류
INSERT INTO emp_fk (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
    'hong',
    'CLERK',
    '7788',
    TO_DATE('2017/04/03','YYYY/MM/DD'),
    1200,
    NULL,
    10
);--무결성 제약조건(SCOTT.EMPFK_DEPTNO_FK)이 위배되었습니다- 부모 키가 없습니다

--dept_fk에 데이터 삽입
INSERT INTO dept_fk (
    deptno,
    dnaem,
    loc
) VALUES (
    10,
    'test_dname',
    'test_log'
);

--dept_fk(부모)에 데이터 삽입 후 emp_fk에 데이터 삽입 가능
INSERT INTO emp_fk (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
    'hong',
    'CLERK',
    '7788',
    TO_DATE('2017/04/03','YYYY/MM/DD'),
    1200,
    NULL,
    10
);