--FOR LOOP : �ݺ� Ƚ���� �˰� �ִ� ��� ���
--FOR i IN REVERSE ���۰�..���ᰪ LOOP 
--         ���๮��;
--END LOOP;
---> �Ųٷ� ����

SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('i : '|| i);
    END LOOP;
END;
/