--���� ���ǵ� ����: ���ο��� �� ���� ��ȣ�� �ش��ϴ� �̸��� �����ϴ� ����

SET SERVEROUTPUT ON;
DECLARE
    V_WRONG VARCHAR2(20);
BEGIN
    --���ڿ���  NUMBER�� �Ҵ�
    DBMS_OUTPUT.PUT_LINE('1');
    
    SELECT dname INTO V_WRONG
    FROM dept
    WHERE deptno IN (10,20);
    
    DBMS_OUTPUT.PUT_LINE('2');
    
EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('���� ó�� : �䱸���� ���� �� ���� ���� �߻�');        
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('���� ó�� : ��ġ �Ǵ� �� ���� �߻�');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('���� ó�� : ���� ���� �� ���� �߻�');
END;
/