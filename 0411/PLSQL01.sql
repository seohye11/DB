--������ Ŀ�� : ����Ŭ���� �ڵ����� ����Ǵ� Ŀ��
-- DML��, SELECT INTO�� ���� ����� �� �ڵ����� ���� �� ó��
--SQL%NOTFOUND : ������ Ŀ�� �ȿ� ������ ���� ������ TRUE, DML�ݿ��� ��� TRUE
--SQL%FOUND : ������ Ŀ�� �ȿ� ������ ���� ������ TRUE, DML�ݿ��� ������ TRUE
--SQL%ROWCOUNT : ������ Ŀ���� ������� ������ �� �� �Ǵ� DML �ݿ� �� ��
--SQL%ISOPEN : ������ Ŀ���� �ڵ����� SQL���� ������ �� CLOSE�ǹǷ� �׻� FALSE

UPDATE dept
SET dname = 'DATABASE'
WHERE deptno = 50;

SET SERVEROUTPUT ON;
DECLARE
    
BEGIN
    UPDATE dept
    SET dname = 'DATABASE'
    WHERE deptno = 50;
    
    DBMS_OUTPUT.PUT_LINE('���ŵ� ���� �� : '|| SQL%ROWCOUNT);
    
    IF(SQL%FOUND)THEN
        DBMS_OUTPUT.PUT_LINE('���� ��� �� ���� ���� : TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('���� ��� �� ���� ���� : FLASE');
    END IF;

    IF(SQL%ISOPEN)THEN
        DBMS_OUTPUT.PUT_LINE('Ŀ���� OPEN���� : TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Ŀ���� OPEN����  : FLASE');

    END IF;

END;
/