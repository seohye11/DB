--��Ű�� : ������ ��ɸ鿡�� �������� ���� ���ν���, �Լ� �� ��������
--PL/SQL �������α׷��� �ϳ��� ���� �׷����� ���� ���� �����ϴµ� ����ϴ� ��ü
--��Ű�� ������ ���� : ������, ����(BODY)

--��Ű�� ���� : ��Ű���� ������ ����,���,����,Ŀ��,PL/SQL�������α׷��� ����
--CREATE [OR REPLACE] PACKAGE ��Ű���̸�
--IS | AS
--  �������α׷��� ������ �پ��� ��ü ����
--END[��Ű���̸�];

CREATE OR REPLACE PACKAGE PKG_EXAMPLE
IS
    spec_no NUMBER := 10;
    FUNCTION func_aftertax(sal NUMBER) RETURN NUMBER;
    
    PROCEDURE pro_emp(in_empno IN EMP.empno%TYPE);
    
    PROCEDURE pro_dept(in_deptno IN DEPT.deptno%TYPE);
END;
/

