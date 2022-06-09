CREATE TABLE dept_const(
    deptno NUMBER(2) CONSTRAINT deptconst_deptno_pk PRIMARY KEY,
    dname VARCHAR2(14) CONSTRAINT deptconst_dname_unq UNIQUE,
    loc VARCHAR2(13) CONSTRAINT deptconst_loc_nn NOT NULL
);

CREATE TABLE emp_const(
    empno NUMBER(4) CONSTRAINT empconst_empno_pk PRIMARY KEY,
    ename VARCHAR2(10) CONSTRAINT empconst_ename_nn NOT NULL,
    job VARCHAR2(9),  
    tel VARCHAR2(20) CONSTRAINT empconst_tel_unq UNIQUE,
    hiredate DATE,
    sal NUMBER(7,2) CONSTRAINT empconst_sal_chk 
    CHECK(sal BETWEEN 1000 AND 9999),
    comm NUMBER(7,2),
    deptno NUMBER(2) CONSTRAINT empconst_deptno_fk REFERENCES dept_const(deptno)
);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name IN ('DEPT_CONST','EMP_CONST');