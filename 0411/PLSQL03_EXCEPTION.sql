--EXCEPTION : ���α׷��� ����Ǵ� �߿� �߻��Ǵ� ����

--EXCEPTION
--WHEN exception1 [OR exception2] THEN
--  STATEMENT1;
--  STATEMENT2;
--WHEN exception3 [OR exception4] THEN
--  STATEMENT1;
--  STATEMENT2;
--WHEN OTHERS THEN
--  STATEMENT1;
--  STATEMENT2;

SET SERVEROUTPUT ON;
DECLARE
    V_WRONG NUMBER;
BEGIN
    --���ڿ���  NUMBER�� �Ҵ�
    SELECT dname INTO V_WRONG
    FROM dept
    WHERE deptno = 10;
    
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('���� ó�� : ��ġ �Ǵ� �� ���� �߻�');
END;
/