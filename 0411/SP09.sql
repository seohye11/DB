--���� �������α׷� 
-- : �̸��� �����ؼ� �ݺ��ؼ� ���, ORACLE ������, �����
--�������ν��� : �Ϲ������� Ư�� ó�� �۾� ������ ���� �������α׷����� SQL������ ��� �Ұ�
--�����Լ� : �Ϲ������� Ư�� ������ ��ģ ��� ���� ��ȯ, �������α׷����� SQL������ ��� ����
--��Ű�� : ���� �������α׷��� �׷�ȭ�ϴµ� ���
--Ʈ���� : Ư�� ��Ȳ(�̺�Ʈ)�� �߻��� �� �ڵ����� ����Ǵ� ���

--CREATE OR REPLACE PROCEDURE ���ν��� �̸�
--IS | AS
--  �����
--BEGIN
--  �����
--EXCEPTION
--  ����ó����
--END[���ν��� �̸�];

--CREATE OR REPLACE -> ������ ���ν��� �̸��� ���� ���ν����� �����ϸ�
--                     �ۼ��� �������� ��ü
--PROCEDURE ���ν��� �̸� -> ���� �̸��� ���� ���� ��Ű�� ������

CREATE OR REPLACE PROCEDURE PRO_NOPARAM
IS
    V_EMPNO NUMBER(4) := 7788;
    V_ENAME VARCHAR(10);
BEGIN
    V_ENAME := 'SCOTT';
    DBMS_OUTPUT.PUT_LINE('V_EMPNO : '|| V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('V_ENAME : '|| V_ENAME);
END;
/

--���� : EXECUTE ���ν��� �̸�
EXECUTE PRO_NOPARAM;