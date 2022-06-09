SET SERVEROUTPUT ON;
DECLARE
    V_WRONG DATE;
BEGIN
    SELECT ename INTO V_WRONG
    FROM emp
    WHERE empno = 7369;
    
    DBMS_OUTPUT.PUT_LINE('���ܰ� �߻��ϸ� ���� ������ ������� �ʽ��ϴ�');
    
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('������ �߻��Ͽ����ϴ�.'||'['||SYSDATE||']');
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('������ �߻��Ͽ����ϴ�.'||'['||SYSDATE||']');
      DBMS_OUTPUT.PUT_LINE('SQLCODE : '|| TO_CHAR(SQLCODE));  
      DBMS_OUTPUT.PUT_LINE('SQLERRM : '|| SQLERRM);  
END;
/