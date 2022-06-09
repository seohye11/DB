--������� Ŀ�� : ����ڰ� ���� Ŀ���� �����ϰ� ����ϴ� Ŀ���� ����
--1�ܰ� : Ŀ���� ����(declaration) 
--2�ܰ� : Ŀ������(open)
--3�ܰ� : Ŀ������ �о�� ������ ���(fetch)
--4�ܰ� : Ŀ�� �ݱ�(close)

--DECLARE
--  CURSOR Ŀ���̸� IS SQL��;  :Ŀ�� ����
--BEGIN
--  OPEN Ŀ���̸�;             :Ŀ�� ����
--  FETCH Ŀ���̸� INTO ����;   :Ŀ���κ��� �о�� �����͸� ���
--  CLOSE Ŀ���̸�;             :Ŀ�� �ݱ�
--END;

--�ϳ��� �ุ ��ȸ�Ǵ� ��� VS SELECT INTO
    SELECT deptno, dname, loc INTO V_DEPT
    FROM dept
    WHERE deptno = 40;


SET SERVEROUTPUT ON;
DECLARE
    V_DEPT DEPT%ROWTYPE;
    
    --����� Ŀ�� ����'
    CURSOR C1 IS 
    SELECT deptno, dname, loc
    FROM dept
    WHERE deptno = 40;
BEGIN
    --Ŀ������
    OPEN C1;
    --Ŀ���κ��� �о�� ������ ���
    FETCH C1 INTO V_DEPT;
    DBMS_OUTPUT.PUT_LINE('deptno : ' || V_DEPT.deptno);
    DBMS_OUTPUT.PUT_LINE('dname : ' || V_DEPT.dname);
    DBMS_OUTPUT.PUT_LINE('loc : ' || V_DEPT.loc);
    --Ŀ�� �ݱ�
    CLOSE C1;
    
END;
/