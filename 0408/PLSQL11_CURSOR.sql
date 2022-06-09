--Ŀ��(cursor)
-- : SELECT�� �Ǵ� DML ���� SQL���� �������� �� �ش� SQL���� ó���ϴ�
--   ������ ������ �޸� ����(����� Ŀ��, ������ Ŀ��)
--SELECT INTO : ��ȸ�Ǵ� �����Ͱ� �� �ϳ��� ���� �� ��� ������ ���
--SELECT ��1,��2,..��n INTO ����1,����2,..����n
--FROM

SELECT deptno, dname, loc
FROM dept
WHERE deptno = 40;


SET SERVEROUTPUT ON;
DECLARE
    V_DEPT dept%ROWTYPE;
BEGIN
    SELECT deptno, dname, loc INTO V_DEPT
    FROM dept
    WHERE deptno = 40;
    
    DBMS_OUTPUT.PUT_LINE('deptno : '|| V_DEPT.deptno);
    DBMS_OUTPUT.PUT_LINE('dname : '|| V_DEPT.dname);
    DBMS_OUTPUT.PUT_LINE('loc : '|| V_DEPT.loc);
END;
/


SET SERVEROUTPUT ON;
DECLARE
    V_DEPT dept%ROWTYPE;
BEGIN
    SELECT deptno, dname, loc INTO V_DEPT
    FROM dept;
    
    DBMS_OUTPUT.PUT_LINE('deptno : '|| V_DEPT.deptno);
    DBMS_OUTPUT.PUT_LINE('dname : '|| V_DEPT.dname);
    DBMS_OUTPUT.PUT_LINE('loc : '|| V_DEPT.loc);
END;
/--���� ���� -
--ORA-01422: ���� ������ �䱸�� �ͺ��� ���� ���� ���� �����մϴ�