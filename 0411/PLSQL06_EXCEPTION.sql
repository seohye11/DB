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
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('���� ó�� : ���� ���� �� ���� �߻�');
        DBMS_OUTPUT.PUT_LINE('SQLCODE : '|| TO_CHAR(SQLCODE));
        DBMS_OUTPUT.PUT_LINE('SQLERRM : '|| SQLERRM);
END;
/

--SQLCODE : ������ȣ�� ��ȯ
--SQLERRM : ���� �޽����� ��ȯ