--참조형(reference type) : 특정 테이블의 열의 자료형, 하나의 행 구조를 참조하는 자료형
--                        변수이름 테이블.열이름%TYPE;
--                        변수이름 테이블.%ROWTYPE;

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