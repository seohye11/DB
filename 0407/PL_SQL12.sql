--������(reference type) : Ư�� ���̺��� ���� �ڷ���, �ϳ��� �� ������ �����ϴ� �ڷ���
--                        �����̸� ���̺�.���̸�%TYPE;
--                        �����̸� ���̺�.%ROWTYPE;

SET SERVEROUTPUT ON;
DECLARE
    V_DEPT_ROW DEPT%ROWTYPE;
BEGIN
    SELECT deptno, dname, loc INTO V_DEPT_ROW
    FROM dept
    WHERE deptno = 40;
    DBMS_OUTPUT.PUT_LINE('deptno : ' || V_DEPT_ROW.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('dname : ' || V_DEPT_ROW.DNAME);
    DBMS_OUTPUT.PUT_LINE('loc : ' || V_DEPT_ROW.LOC);
END;
/