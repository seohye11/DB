--���� ���� : ���̺� ������ �����͸� �����ϴ� Ư���� ��Ģ
--NOT NULL : �� ������ ������ �÷����� null���� �Էµ��� ���ϵ��� �Ѵ�
--UNLQUE : �� ������ ������ �÷����� �ߺ��� ���� �Էµ��� ���Ѵ�
--PRIMARY KEY : NOT NULL + UNIQUE�� Ư¡�� ������ ���̺� ������ 
--             �����͵鳢���� ���ϼ��� �����ϴ� �÷��� ����, ���̺�� 1���� ����
--FOREIGN KEY : �� ������ �ٸ� ���̺��� �÷��� �����ؼ� �˻縦 �Ѵ�
--CHECK : �� ���ǿ��� ������ ���� �Է��� ����ϰ� �������� �źεȴ�

--�����ϰ� �ϳ��� �ִ� �� PRIMARY KEY
--Ư�� ���� pk�����ϸ� �ش� ������ �ڵ����� �ε����� ���������

--���̺� ������ pk ����(pk�����ϸ� �ε��� �ڵ� ����)
--���̺� ����
CREATE TABLE table_pk(
    login_id VARCHAR2(20) PRIMARY KEY,
    login_pwd VARCHAR2(20) NOT NULL,
    tel VARCHAR2(20)
);

--���̺� ���� ��ȸ
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_PK'
;

--USER_INDEXES ��ȸ
SELECT t1.index_name,
       t1.table_owner,
       t1.table_name
FROM user_indexes t1
WHERE t1.table_name LIKE 'TABLE_PK%'
;

