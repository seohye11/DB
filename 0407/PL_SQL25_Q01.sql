--1~10 ���� ���� �� Ȧ���� ���� ���

SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN 1..10 LOOP
        CONTINUE WHEN MOD(i,2) = 0;--�������� 0�̸� �ǳʶٱ�
        DBMS_OUTPUT.PUT_LINE('i : ' || i);
    END LOOP;
END;
/