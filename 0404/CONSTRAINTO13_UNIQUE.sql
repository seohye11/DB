--���� ���� : ���̺� ������ �����͸� �����ϴ� Ư���� ��Ģ
--NOT NULL : �� ������ ������ �÷����� null���� �Էµ��� ���ϵ��� �Ѵ�
--UNLQUE : �� ������ ������ �÷����� �ߺ��� ���� �Էµ��� ���Ѵ�
--PRIMARY KEY : NOT NULL + UNIQUE�� Ư¡�� ������ ���̺� ������ 
--             �����͵鳢���� ���ϼ��� �����ϴ� �÷��� ����, ���̺�� 1���� ����
--FOREIGN KEY : �� ������ �ٸ� ���̺��� �÷��� �����ؼ� �˻縦 �Ѵ�
--CHECK : �� ���ǿ��� ������ ���� �Է��� ����ϰ� �������� �źεȴ�

--�ߺ����� �ʴ� �� UNIQUE : ���� ������ �������� �ߺ��� ������� �ʰ��� �� �� ���
--(��, ������ ���� NULL �� ������ ���� ����)

--���̺��� �����ϸ� ���� ���� ����

CREATE TABLE table_unique(
    LOGIN_ID VARCHAR2(20 BYTE) UNIQUE,
    LOGIN_PWD VARCHAR2(20) NOT NULL,
    tel VARCHAR2(20)
);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name = 'TABLE_UNIQUE'