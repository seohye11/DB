--emp_fk ���̺� ������ ����

--dept_fk�� �����Ͱ� ����->����
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
);--���Ἲ ��������(SCOTT.EMPFK_DEPTNO_FK)�� ����Ǿ����ϴ�- �θ� Ű�� �����ϴ�

--dept_fk�� ������ ����
INSERT INTO dept_fk (
    deptno,
    dnaem,
    loc
) VALUES (
    10,
    'test_dname',
    'test_log'
);

--dept_fk(�θ�)�� ������ ���� �� emp_fk�� ������ ���� ����
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