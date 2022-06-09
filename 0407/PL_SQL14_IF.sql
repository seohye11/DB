--조건 제어문(IF, CASE)
--IF 조건문
--IF-THEN (자바 -> if문) : IF 조건식 THEN
--                           수행할 명령어;
--                        END IF;

SET SERVEROUTPUT ON;
DECLARE
    V_NUMBER NUMBER := 13;
BEGIN
    IF MOD(V_NUMBER,2) = 1 THEN
        DBMS_OUTPUT.PUT_LINE('V_NUMBER는 홀수입니다');
    END IF;
END;
/
