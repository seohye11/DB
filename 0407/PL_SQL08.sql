--변수와 상수
--변수 : 선언부(DECLARE)에서 작성
--변수 선언과 사용 => 변수 이름 자료형 := 값 또는 표현식;
--상수 선언과 사용 => 변수 이름 CONSTANT 자료형 := 값 또는 표현식;

SET SERVEROUTPUT ON;
DECLARE
    V_TAX CONSTANT NUMBER(1) := 3;
BEGIN
    V_TAX := 9;
    DBMS_OUTPUT.PUT_LINE('V_TAX : '|| V_TAX);
END;
/--오류