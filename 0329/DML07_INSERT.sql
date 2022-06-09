--empno : 9999
--ename : '홍길동'
--job : 'PRESIDENT'
--mgr : NULL
--hiredate : '2001/01/01'
--sal : 5000
--comm : 1000
--deptno : 10

INSERT INTO emp_temp(
    empno, 
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
)VALUES(
    9999,
    '홍길동',
    'PRESIDENT',
    NULL,
    '2001/01/01',
    5000,
    1000,
    10
);

SELECT * FROM emp_temp;

--순서 변경 오류 확인하기------------------------------
INSERT INTO emp_temp(
    empno, 
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
)VALUES(
    2111,
    '홍길02',
    'PRESIDENT',
    NULL,
    '01/01/2001',--ORA-01830: 날짜 형식의 지정에 불필요한 데이터가 포함되어 있습니다
    5000,
    1000,
    10
);

--날짜형식 자동형변환 확인하기------------------------------
INSERT INTO emp_temp(
    empno, 
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
)VALUES(
    1111,
    '홍03',
    'PRESIDENT',
    NULL,
    '200-01-01',--자동형변환 가능
    5000,
    1000,
    10
);

SELECT * FROM emp_temp;

--TO_DATE()입력 가능 확인------------------------------
INSERT INTO emp_temp(
    empno, 
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
)VALUES(
    2112,
    '홍05',
    'PRESIDENT',
    NULL,
    TO_DATE('01/01/2001','DD/MM/YYYY'),
    5000,
    1000,
    10
);

SELECT * FROM emp_temp;

--SYSDATE 입력 가능 확인------------------------------
INSERT INTO emp_temp(
    empno, 
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
)VALUES(
    2113,
    '홍06',
    'PRESIDENT',
    NULL,
    SYSDATE,
    5000,
    1000,
    10
);

SELECT * FROM emp_temp;