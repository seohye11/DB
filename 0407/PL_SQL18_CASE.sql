--CASE조건문
--CASE 
--     WHEN 조건식1 THEN
--          수행명령어;
--     WHEN 조건식2 THEN
--          수행명령어;
--     ELSE
--          수행명령어;
--END CASE;

SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 89;
BEGIN
    CASE
        WHEN V_SCORE >= 90 THEN DBMS_OUTPUT.PUT_LINE('A');
        WHEN V_SCORE >= 80 THEN DBMS_OUTPUT.PUT_LINE('B');
        WHEN V_SCORE >= 70 THEN DBMS_OUTPUT.PUT_LINE('C');
        WHEN V_SCORE >= 60 THEN DBMS_OUTPUT.PUT_LINE('D');
        ELSE DBMS_OUTPUT.PUT_LINE('F');
    END CASE;
END;
/