--���ν��� ���� ���� Ȯ���ϱ� : ���ν��� ������ �� �߻��ϴ� ���� Ȯ��

CREATE OR REPLACE PROCEDURE pro_err
IS
    err_no NUMBER;
BEGIN
    err_no = 100; -- :����(����)
    
    DBMS_OUTPUT.PUT_LINE('err_no : '|| err_no);
END;
/--������ ������ �Բ� ���ν����� ����

--SHOW ERRORS�� ���� Ȯ��
SHOW ERRORS 

SHOW ERR PROCEDURE PRO_ERR;
