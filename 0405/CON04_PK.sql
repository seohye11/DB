--PRIMARY KEY제약 조건을 지정한 열 확인(NULL 데이터 입력)
INSERT INTO table_pk (login_id, login_pwd, tel)
VALUES(NULL,'PWD01','010-1234-5678');
--NULL을 ("SCOTT"."TABLE_PK"."LOGIN_ID") 안에 삽입할 수 없습니다

INSERT INTO table_pk (login_pwd, tel)
VALUES('PWD01','010-1234-5678');
--NULL을 ("SCOTT"."TABLE_PK"."LOGIN_ID") 안에 삽입할 수 없습니다

--=>primary key에는 null 값 입력 불가능