--IF-THEN_ELSE (�ڹ� -> if~else) : IF ���ǽ� THEN
--                                   ������ ��ɾ�;
--                                 ELSE
--                                 END IF;
SET SERVEROUTPUT ON;
DECLARE
    V_NUMBER NUMBER := 14;
BEGIN
    IF MOD(V_NUMBER,2) = 1 THEN
        DBMS_OUTPUT.PUT_LINE('V_NUMBERE�� Ȧ���Դϴ�');
    ELSE
        DBMS_OUTPUT.PUT_LINE('V_NUMBERE�� ¦���Դϴ�');
    END IF;
END;
/