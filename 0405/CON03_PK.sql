--PRIMARY KEY���� ������ ������ �� Ȯ��(�ߺ� ������ �Է�)
INSERT INTO table_pk (login_id, login_pwd, tel)
VALUES('TEST_ID_01','PWD01','010-1234-5678');

SELECT * 
FROM table_pk;

INSERT INTO table_pk (login_id, login_pwd, tel)
VALUES('TEST_ID_01','PWD02','010-1234-5678');
--ORA-00001: ���Ἲ ���� ����(SCOTT.SYS_C008279)�� ����˴ϴ�:�ߺ� ������ ���� �Ұ�