--empno : 9999
--ename : 'ȫ�浿'
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
    'ȫ�浿',
    'PRESIDENT',
    NULL,
    '2001/01/01',
    5000,
    1000,
    10
);

SELECT * FROM emp_temp;

--���� ���� ���� Ȯ���ϱ�------------------------------
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
    'ȫ��02',
    'PRESIDENT',
    NULL,
    '01/01/2001',--ORA-01830: ��¥ ������ ������ ���ʿ��� �����Ͱ� ���ԵǾ� �ֽ��ϴ�
    5000,
    1000,
    10
);

--��¥���� �ڵ�����ȯ Ȯ���ϱ�------------------------------
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
    'ȫ03',
    'PRESIDENT',
    NULL,
    '200-01-01',--�ڵ�����ȯ ����
    5000,
    1000,
    10
);

SELECT * FROM emp_temp;

--TO_DATE()�Է� ���� Ȯ��------------------------------
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
    'ȫ05',
    'PRESIDENT',
    NULL,
    TO_DATE('01/01/2001','DD/MM/YYYY'),
    5000,
    1000,
    10
);

SELECT * FROM emp_temp;

--SYSDATE �Է� ���� Ȯ��------------------------------
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
    'ȫ06',
    'PRESIDENT',
    NULL,
    SYSDATE,
    5000,
    1000,
    10
);

SELECT * FROM emp_temp;