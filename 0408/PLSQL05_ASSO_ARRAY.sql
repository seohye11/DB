--�ڷ����� ���� ���� �����͸� �����ϴ� �÷���
--TABLE TYPE������ �ϱ⵵ �Ѵ�
--�� ������ Record Type�� ���� �������� ������ ������ �÷��� ���� �� �ִ�

--��ø���̺�(nested table)
--VARRAY(valiable-size array)
--�����迭(associative array) -> ���� �ִ�
-- : �ε������ �Ҹ��� Ű, ������ �����Ǵ� �÷���
--   �ߺ����� ���� ������ Ű�� ���� ���� �����ϰ� �ҷ����� ���
--  TYPE �����迭�̸� IS TABLE OF �ڷ���[NOT NULL]
--  INDEX BY �ε�����;
--> �ڷ��� : �����迭�� ����� �ڷ���, VARCHAR2, DATE, NUMBER, %TYPE, %RECORD
--> �ε����� : Ű�� ����� �ε����� �ڷ����� ����
--BINARY_INREGER_INTEGER���� ����, VARCHAR2���� �����ڷ����� ��� ����

SET SERVEROUTPUT ON;
DECLARE
    --�����迭  ����
    TYPE ITAB_EX IS TABLE OF VARCHAR2(20)
    INDEX BY PLS_INTEGER;
    --PLS_INTEGER : -2,147,483,648~2,147,483,648���� ������ ���� ���� Ÿ��
    --              NUMBER���� ���� ���������� ���� ���� �� ������
    
    --����
    text_arr ITAB_EX;
BEGIN
    text_arr(1) := '1st data';
    text_arr(2) := '2st data';
    text_arr(3) := '3st data';
    
    DBMS_OUTPUT.PUT_LINE('text_arr(1) : '|| text_arr(1));
    DBMS_OUTPUT.PUT_LINE('text_arr(2) : '|| text_arr(2));
    DBMS_OUTPUT.PUT_LINE('text_arr(3) : '|| text_arr(3));
END;
/

