--�ݺ���
--�⺻LOOP : �⺻ �ݺ���
--WHILE LOOP : Ư�� ���ǽ��� ����� ���� �ݺ� ����
--FOR LOOP : �ݺ� Ƚ���� �˰� �ִ� ��� ���
--Cusor FOR LOOP : Ŀ���� Ȱ���� �ݺ���

--�ݺ��� ���� �ߴ�
--EXIT : �������� �ݺ��� ����
--EXIT-WHEN : �ݺ� ���Ḧ ���� ���ǽ��� �����ϰ� �����ϸ� ����
--CONTINUE : ���� ���� �ݺ��� ���� �ֱ⸦ �ǳʶ�
--CONTINUE-WHEN : ���ǽ��� �����ϸ� ���� ���� �ݺ��� ���� �ֱ⸦ �ǳʶ�

--�⺻LOOP : �ſ� ������ ������ �ݺ���
--LOOP
--  �ݺ� ���� ����;
--  EXIT WHEN ����;
--END LOOP;

SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('V_NUM : '|| V_NUM);
        V_NUM := V_NUM + 1;
        EXIT WHEN V_NUM > 11;
    END LOOP;
END;
/