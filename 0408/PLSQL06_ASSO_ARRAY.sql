--레코드를 활용한 연관 배열
SET SERVEROUTPUT ON;
DECLARE
    --레코드 선언 dept
    TYPE REC_DEPT IS RECORD(
        deptno DEPT.DEPTNO%TYPE,
        dname DEPT.DNAME%TYPE
    );
    --레코드타입 연관배열
    TYPE ITAB_DEPT IS TABLE OF REC_DEPT
    INDEX BY PLS_INTEGER;
    
    --연관배열 선언
    dept_arr ITAB_DEPT;
    idx PLS_INTEGER := 0;
BEGIN
    FOR i IN (SELECT * FROM dept) LOOP
        idx := idx + 1;
        dept_arr(idx).deptno := i.deptno;
        dept_arr(idx).dname := i.dname;
        
        DBMS_OUTPUT.PUT_LINE(dept_arr(idx).deptno||':'||dept_arr(idx).dname);
    END LOOP;
END;
/