--EXCEPTION : 프로그램이 실행되는 중에 발생되는 오류

--EXCEPTION
--WHEN exception1 [OR exception2] THEN
--  STATEMENT1;
--  STATEMENT2;
--WHEN exception3 [OR exception4] THEN
--  STATEMENT1;
--  STATEMENT2;
--WHEN OTHERS THEN
--  STATEMENT1;
--  STATEMENT2;

SET SERVEROUTPUT ON;
DECLARE
    V_WRONG NUMBER;
BEGIN
    --문자열을  NUMBER에 할당
    SELECT dname INTO V_WRONG
    FROM dept
    WHERE deptno = 10;
    
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('예외 처리 : 수치 또는 값 오류 발생');
END;
/