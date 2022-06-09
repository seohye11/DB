--���� ���� : ���̺� ������ �����͸� �����ϴ� Ư���� ��Ģ
--NOT NULL : �� ������ ������ �÷����� null���� �Էµ��� ���ϵ��� �Ѵ�
--UNIQUE : �� ������ ������ �÷����� �ߺ��� ���� �Էµ��� ���Ѵ�
--PRIMARY KEY : NOT NULL + UNIQUE�� Ư¡�� ������ ���̺� ������ 
--             �����͵鳢���� ���ϼ��� �����ϴ� �÷��� ����, ���̺�� 1���� ����
--FOREIGN KEY : �� ������ �ٸ� ���̺��� �÷��� �����ؼ� �˻縦 �Ѵ�
--CHECK : �� ���ǿ��� ������ ���� �Է��� ����ϰ� �������� �źεȴ�

--�� ���� ������� �ʴ� NOT NULL
--1. ���̺� ����
CREATE TABLE table_notnull(
    LOGIN_ID VARCHAR2(20 BYTE) not null,
    LOGIN_PWD VARCHAR2(20) not null,
    tel VARCHAR2(20)
);

DESC table_notnull;

--2. NOT NULL �÷��� NULL�Է�
INSERT INTO table_notnull (login_id, login_pwd, tel)VALUES ('TEST_01',NULL,'010-1234-5678');
--NULL�� ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD") �ȿ� ������ �� �����ϴ�

--3. NULL�Է�
INSERT INTO table_notnull (login_id, login_pwd)VALUES ('TEST_01','1234');

--4. UPDATE NOT NULL -> NULL
UPDATE table_notnull
SET login_pwd = NULL
WHERE login_id = 'TEST_01';--NULL�� ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD")�� ������Ʈ�� �� �����ϴ�

--5. NOT NULL ���� ���� ��ȸ
--USER_CONSTRAINTS
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name = 'TABLE_NOTNULL'
;

--CONSTRAINT_TYPE
--C : CHECK, NOT NULL
--U : UNIQUE
--P : PRIMARY KEY
--R : FOREIGN KEY

--CONSTRAINT_NAME : SYS_XXXXX �ý����� �̸� �ο�