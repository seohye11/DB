--EXCEPTION : ���α׷��� ����Ǵ� �߿� �߻��Ǵ� ����
--Predefined Oracle Exception
--Userdefaind Exception

SELECT dname
FROM dept
WHERE deptno = 10;

SET SERVEROUTPUT ON;
DECLARE
    V_WRONG NUMBER;
BEGIN
    --���ڿ���  NUMBER�� �Ҵ�
    SELECT dname INTO V_WRONG
    FROM dept
    WHERE deptno = 10;
END;
/--��ġ �Ǵ� �� ����: ���ڸ� ���ڷ� ��ȯ�ϴµ� �����Դϴ�