--IF-THEN_ELSIF (자바 -> if~else if) : IF 조건식 THEN
--                                        수행할 명령어;
--                                     ELSIF 조건식 THEN
--                                        수행할 명령어;
--                                     ELSIF 조건식 THEN
--                                        수행할 명령어;
--                                     ELSE
--                                        수행할 명령어;
--                                     END IF;

SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 88;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_SCORE : '|| V_SCORE);
    IF V_SCORE >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('V_SCORE : '|| 'A');
    ELSIF V_SCORE >= 80 THEN
        DBMS_OUTPUT.PUT_LINE('V_SCORE : '|| 'B');
    ELSIF V_SCORE >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('V_SCORE : '|| 'C');
    ELSIF V_SCORE >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('V_SCORE : '|| 'D');
    ELSE
        DBMS_OUTPUT.PUT_LINE('V_SCORE : '|| 'F');
    END IF;
END;
/