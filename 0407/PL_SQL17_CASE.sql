--CASE���ǹ�
--CASE �񱳱��� 
--     WHEN ��1 THEN
--          �����ɾ�;
--     WHEN ��2 THEN
--          �����ɾ�;
--     ELSE
--          �����ɾ�;
--END CASE;

SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 89;
BEGIN
    DBMS_OUTPUT.PUT_LINE('TRUNC(v_SCORE/10) : ' ||TRUNC(v_SCORE/10));
    CASE TRUNC(v_SCORE/10)
        WHEN 10 THEN DBMS_OUTPUT.PUT_LINE('A');
        WHEN 9 THEN DBMS_OUTPUT.PUT_LINE('A');
        WHEN 8 THEN DBMS_OUTPUT.PUT_LINE('B');
        WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('C');
        WHEN 6 THEN DBMS_OUTPUT.PUT_LINE('D');
        ELSE DBMS_OUTPUT.PUT_LINE('F');
    END CASE;
END;
/