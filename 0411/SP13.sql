--�Ķ���͸� ����ϴ� ���ν���
--CREATE OR REPLACE PROCEDURE ���ν��� �̸�
--[( �Ķ���� �̸�1 �ڷ��� := |DEFAULT �⺻��,
--   �Ķ���� �̸�2 �ڷ��� := |DEFAULT �⺻��,
--
--   �Ķ���� �̸�N �ڷ��� := |DEFAULT �⺻��
--)]
--IS | AS
--  �����
--BEGIN
--  �����
--EXCEPTION
--  ����ó����
--END[���ν��� �̸�];

--�Ķ���� ���
--IN : �������� ������ �⺻�� �Ķ� �Է�
--OUT : ȣ�� ��ȯ��
--IN OUT : �Է°� ��ȯ ���� ����

CREATE OR REPLACE PROCEDURE pro_param_in
( param1 IN NUMBER,
  param2 NUMBER, --MODE�����ϸ� IN
  param3 NUMBER := 3,
  param4 NUMBER DEFAULT 4
)
IS

BEGIN
    DBMS_OUTPUT.PUT_LINE('param1 : '||param1);
    DBMS_OUTPUT.PUT_LINE('param2 : '||param2);
    DBMS_OUTPUT.PUT_LINE('param3 : '||param3);
    DBMS_OUTPUT.PUT_LINE('param4 : '||param4);
END;
/--���ν��� ����



