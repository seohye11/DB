--IF-THEN_ELSE (자바 -> if~else) : IF 조건식 THEN
--                                   수행할 명령어;
--                                 ELSE
--                                 END IF;
SET SERVEROUTPUT ON;
DECLARE
    V_NUMBER NUMBER := 14;
BEGIN
    IF MOD(V_NUMBER,2) = 1 THEN
        DBMS_OUTPUT.PUT_LINE('V_NUMBERE는 홀수입니다');
    ELSE
        DBMS_OUTPUT.PUT_LINE('V_NUMBERE는 짝수입니다');
    END IF;
END;
/