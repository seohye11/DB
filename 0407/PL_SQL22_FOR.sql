--FOR LOOP : �ݺ� Ƚ���� �˰� �ִ� ��� ���
--FOR i IN ���۰�..���ᰪ LOOP
--         ���๮��;
--END LOOP;

SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('i : '|| i);
    END LOOP;
END;
/