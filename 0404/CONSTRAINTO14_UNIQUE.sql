--�ߺ��� ������� �ʴ� UNIQUE

INSERT INTO table_unique VALUES('TEST_ID_01','PWD01','010-1234-5678');--������ ����

SELECT * FROM table_unique;

INSERT INTO table_unique VALUES('TEST_ID_01','PWD02','010-1234-5678');
--���Ἲ ���� ����(SCOTT.SYS_C008239)�� ����˴ϴ�
-->�ߺ� ������ ���� �Ұ���

INSERT INTO table_unique VALUES('TEST_ID_02','PWD02','010-1234-5678');--���԰���

INSERT INTO table_unique VALUES('NULL','PWD02','010-1234-5678');

SELECT * FROM table_unique;

--NULL -> TEST_ID_01
UPDATE table_unique
SET login_id = 'TEST_ID_01'
WHERE login_id is null;--�������ߵ�-���Ἲ ���� ���ǿ� ����

SELECT * FROM table_unique;