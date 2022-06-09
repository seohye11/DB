--�÷��� �޼���
--EXIST(n) : �÷��ǿ��� n�ε����� ������ ���� ���θ� true/false�� ��ȯ
--COUNT : �÷��ǿ� ���ԵǾ� �ִ� ��� ������ ��ȯ
--LIMIT : ���� �÷����� �ִ� ũ�⸦ ��ȯ, ������ NULL��ȯ
--FIRST : �÷����� ù��° �ε��� ��ȣ�� ��ȯ
--LAST : �÷����� ������ �ε��� ��ȣ�� ��ȯ
--PRIOR(n) : �÷��� n�ε��� �ٷ� �� �ε��� �� ��ȯ, ������ NULL��ȯ
--NEXT(n) : �÷��� n�ε��� �ٷ� ���� �ε��� �� ��ȯ, ������ NULL��ȯ
--DELETE : �÷��ǿ� ������ ��Ҹ� ����µ� ���(DELETE, DELETE(n),DELETE(n,m))
--EXTEND : �÷����� ũ�⸦ ����,�����迭�� ����� ��ø���̺�,VARRAY���� ��밡��
--TRIM : �÷����� ũ�⸦ ����

SET SERVEROUTPUT ON;
DECLARE
    TYPE ITAB_EX IS TABLE OF VARCHAR(20)
    INDEX BY PLS_INTEGER;
    
    text_arr ITAB_EX;
BEGIN
    text_arr(1) := '1st';
    text_arr(2) := '2st';
    text_arr(3) := '3st';
    text_arr(4) := '4st';
    text_arr(50) := '5st';
    
    DBMS_OUTPUT.PUT_LINE('text_arr.COUNT : '|| text_arr.COUNT);
    DBMS_OUTPUT.PUT_LINE('text_arr.FIRST : '|| text_arr.FIRST);
    DBMS_OUTPUT.PUT_LINE('text_arr.LAST : '|| text_arr.LAST);
    DBMS_OUTPUT.PUT_LINE('text_arr.PRIOR(50) : '|| text_arr.PRIOR(50));
    DBMS_OUTPUT.PUT_LINE('text_arr.NEXT(50) : '|| text_arr.NEXT(50));
END;
/