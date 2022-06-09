--1.
CREATE TABLE emp_record
AS
SELECT * FROM emp
WHERE 1 = 2;--테이블 생성

--2.
SET SERVEROUTPUT ON;
DECLARE
    TYPE REC_EMP IS RECORD(
        empno EMP_RECORD.empno%TYPE,
        ename EMP_RECORD.ename%TYPE,
        job EMP_RECORD.job%TYPE,
        mgr EMP_RECORD.mgr%TYPE,
        hiredate EMP_RECORD.hiredate%TYPE,
        sal EMP_RECORD.sal%TYPE,
        comm EMP_RECORD.comm%TYPE,
        deptno EMP_RECORD.deptno%TYPE
    );
    emp_rec REC_EMP;
BEGIN
    emp_rec.empno := 1111;
    emp_rec.ename := 'TEST_USER';
    emp_rec.job := 'TEST_JOB';
    emp_rec.mgr := NULL;
    emp_rec.hiredate := TO_DATE('18/03/01','YYYY/MM/DD');
    emp_rec.sal := 3000;
    emp_rec.comm := NULL;
    emp_rec.deptno := 40;
    
    INSERT INTO emp_record
    VALUES emp_rec;
    
    COMMIT;
END;
/

--3.
SELECT * FROM emp_record;