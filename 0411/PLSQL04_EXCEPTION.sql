SET SERVEROUTPUT ON;
DECLARE
    V_WRONG NUMBER;
BEGIN
    --문자열을  NUMBER에 할당
    DBMS_OUTPUT.PUT_LINE('1');
    
    SELECT dname INTO V_WRONG
    FROM dept
    WHERE deptno = 10;
    
    DBMS_OUTPUT.PUT_LINE('2');
    
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('예외 처리 : 수치 또는 값 오류 발생');
END;
/