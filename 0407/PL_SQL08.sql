--������ ���
--���� : �����(DECLARE)���� �ۼ�
--���� ����� ��� => ���� �̸� �ڷ��� := �� �Ǵ� ǥ����;
--��� ����� ��� => ���� �̸� CONSTANT �ڷ��� := �� �Ǵ� ǥ����;

SET SERVEROUTPUT ON;
DECLARE
    V_TAX CONSTANT NUMBER(1) := 3;
BEGIN
    V_TAX := 9;
    DBMS_OUTPUT.PUT_LINE('V_TAX : '|| V_TAX);
END;
/--����