SET SERVEROUTPUT ON;
DECLARE
    V_WRONG VARCHAR2(20);
BEGIN
    --문자열을  NUMBER에 할당
    DBMS_OUTPUT.PUT_LINE('1');
    
    SELECT dname INTO V_WRONG
    FROM dept
    WHERE deptno IN (10,20);
    
    DBMS_OUTPUT.PUT_LINE('2');
    
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('예외 처리 : 사전 정의 외 오류 발생');
        DBMS_OUTPUT.PUT_LINE('SQLCODE : '|| TO_CHAR(SQLCODE));
        DBMS_OUTPUT.PUT_LINE('SQLERRM : '|| SQLERRM);
END;
/

--SQLCODE : 오류번호를 반환
--SQLERRM : 오류 메시지를 반환