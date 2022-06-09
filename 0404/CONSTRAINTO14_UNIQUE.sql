--중복을 허락하지 않는 UNIQUE

INSERT INTO table_unique VALUES('TEST_ID_01','PWD01','010-1234-5678');--데이터 삽입

SELECT * FROM table_unique;

INSERT INTO table_unique VALUES('TEST_ID_01','PWD02','010-1234-5678');
--무결성 제약 조건(SCOTT.SYS_C008239)에 위배됩니다
-->중복 데이터 삽입 불가능

INSERT INTO table_unique VALUES('TEST_ID_02','PWD02','010-1234-5678');--삽입가능

INSERT INTO table_unique VALUES('NULL','PWD02','010-1234-5678');

SELECT * FROM table_unique;

--NULL -> TEST_ID_01
UPDATE table_unique
SET login_id = 'TEST_ID_01'
WHERE login_id is null;--오류나야됨-무결성 제약 조건에 위배

SELECT * FROM table_unique;