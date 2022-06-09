--���ڵ带 �����ϴ� ���ڵ�
--���ڵ� ����� �� �ٸ� ���ڵ带 ������ ���� �ִ�
--REC_EMP�� REC_DEPT����

SELECT t1.empno, t1.ename, t2.deptno, t2.dname, t2.loc
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
AND t1.empno = 7788
;

SET SERVEROUTPUT ON;
DECLARE
    --dept record����
    TYPE REC_DEPT IS RECORD(
        deptno DEPT.deptno%TYPE,
        dname DEPT.dname%TYPE,
        loc DEPT.loc%TYPE
    );
    
    --emp record����
    TYPE REC_EMP IS RECORD(
        empno EMP.empno%TYPE,
        ename EMP.ename%TYPE,
        --DEPT ���ڵ� ����
        dinfo REC_DEPT
    );
    --emp record ����
    emp_rec REC_EMP;
BEGIN
    SELECT t1.empno, t1.ename, t2.deptno, t2.dname, t2.loc INTO
           emp_rec.empno, emp_rec.ename, emp_rec.dinfo.deptno, 
           emp_rec.dinfo.dname, emp_rec.dinfo.loc
    FROM emp t1, dept t2
    WHERE t1.deptno = t2.deptno
    AND t1.empno = 7788;
    
    --��ȸ ������ ���
    DBMS_OUTPUT.PUT_LINE('empno : ' || emp_rec.empno);
    DBMS_OUTPUT.PUT_LINE('ename : ' || emp_rec.ename);
    DBMS_OUTPUT.PUT_LINE('deptno : ' || emp_rec.dinfo.deptno);
    DBMS_OUTPUT.PUT_LINE('dname : ' || emp_rec.dinfo.dname);
    DBMS_OUTPUT.PUT_LINE('loc : ' || emp_rec.dinfo.loc);
END;
/