--1~10 ���� ���� �� ¦���� ���� ���

SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN 1..10 LOOP
        CONTINUE WHEN MOD(i,2) = 1;--�������� 1�̸� �ǳʶٱ�
        DBMS_OUTPUT.PUT_LINE('i : ' || i);
    END LOOP;
END;
/