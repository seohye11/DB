--커서(cursor)
-- : SELECT문 또는 DML 같은 SQL문을 실행했을 때 해당 SQL문을 처리하는
--   정보를 저장한 메모리 공간(명시적 커서, 묵시적 커서)
--SELECT INTO : 조회되는 데이터가 단 하나의 행일 때 사용 가능한 방식
--SELECT 열1,열2,..열n INTO 변수1,변수2,..변수n
--FROM

SELECT deptno, dname, loc
FROM dept
WHERE deptno = 40;


SET SERVEROUTPUT ON;
DECLARE
    V_DEPT dept%ROWTYPE;
BEGIN
    SELECT deptno, dname, loc INTO V_DEPT
    FROM dept
    WHERE deptno = 40;
    
    DBMS_OUTPUT.PUT_LINE('deptno : '|| V_DEPT.deptno);
    DBMS_OUTPUT.PUT_LINE('dname : '|| V_DEPT.dname);
    DBMS_OUTPUT.PUT_LINE('loc : '|| V_DEPT.loc);
END;
/


SET SERVEROUTPUT ON;
DECLARE
    V_DEPT dept%ROWTYPE;
BEGIN
    SELECT deptno, dname, loc INTO V_DEPT
    FROM dept;
    
    DBMS_OUTPUT.PUT_LINE('deptno : '|| V_DEPT.deptno);
    DBMS_OUTPUT.PUT_LINE('dname : '|| V_DEPT.dname);
    DBMS_OUTPUT.PUT_LINE('loc : '|| V_DEPT.loc);
END;
/--오류 보고 -
--ORA-01422: 실제 인출은 요구된 것보다 많은 수의 행을 추출합니다