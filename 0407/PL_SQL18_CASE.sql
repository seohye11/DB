--CASE���ǹ�
--CASE 
--     WHEN ���ǽ�1 THEN
--          ������ɾ�;
--     WHEN ���ǽ�2 THEN
--          ������ɾ�;
--     ELSE
--          ������ɾ�;
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