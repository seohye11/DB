--WHILE LOOP : Ư�� ���ǽ��� ����� ���� �ݺ� ����
--WHILE ���ǽ� LOOP
--      ���� ����;
--END LOOP;

SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 1;
BEGIN
    WHILE V_NUM < 11 LOOP
        DBMS_OUTPUT.PUT_LINE(V_NUM);
        V_NUM := V_NUM + 1;
    END LOOP;
END;
/