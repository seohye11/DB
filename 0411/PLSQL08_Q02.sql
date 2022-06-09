SET SERVEROUTPUT ON;
DECLARE
    V_WRONG DATE;
BEGIN
    SELECT ename INTO V_WRONG
    FROM emp
    WHERE empno = 7369;
    
    DBMS_OUTPUT.PUT_LINE('예외가 발생하면 다음 문장은 실행되지 않습니다');
    
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('오류가 발생하였습니다.'||'['||SYSDATE||']');
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('오류가 발생하였습니다.'||'['||SYSDATE||']');
      DBMS_OUTPUT.PUT_LINE('SQLCODE : '|| TO_CHAR(SQLCODE));  
      DBMS_OUTPUT.PUT_LINE('SQLERRM : '|| SQLERRM);  
END;
/