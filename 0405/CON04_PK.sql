--PRIMARY KEY���� ������ ������ �� Ȯ��(NULL ������ �Է�)
INSERT INTO table_pk (login_id, login_pwd, tel)
VALUES(NULL,'PWD01','010-1234-5678');
--NULL�� ("SCOTT"."TABLE_PK"."LOGIN_ID") �ȿ� ������ �� �����ϴ�

INSERT INTO table_pk (login_pwd, tel)
VALUES('PWD01','010-1234-5678');
--NULL�� ("SCOTT"."TABLE_PK"."LOGIN_ID") �ȿ� ������ �� �����ϴ�

--=>primary key���� null �� �Է� �Ұ���