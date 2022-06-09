--제약 조건 : 테이블에 저장할 데이터를 제약하는 특수한 규칙
--NOT NULL : 이 조건이 설정된 컬럼에는 null값이 입력되지 못하도록 한다
--UNIQUE : 이 조건이 설정된 컬럼에는 중복된 값이 입력되지 못한다
--PRIMARY KEY : NOT NULL + UNIQUE의 특징을 가지며 테이블 내에서 
--             데이터들끼리의 유일성을 보장하는 컬럼에 설정, 테이블당 1개만 설정
--FOREIGN KEY : 이 조건은 다른 테이블의 컬럼을 참조해서 검사를 한다
--CHECK : 이 조건에서 설정된 값만 입력을 허용하고 나머지는 거부된다

--빈 값을 허락하지 않는 NOT NULL
--1. 테이블 생성
CREATE TABLE table_notnull(
    LOGIN_ID VARCHAR2(20 BYTE) not null,
    LOGIN_PWD VARCHAR2(20) not null,
    tel VARCHAR2(20)
);

DESC table_notnull;

--2. NOT NULL 컬럼에 NULL입력
INSERT INTO table_notnull (login_id, login_pwd, tel)VALUES ('TEST_01',NULL,'010-1234-5678');
--NULL을 ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD") 안에 삽입할 수 없습니다

--3. NULL입력
INSERT INTO table_notnull (login_id, login_pwd)VALUES ('TEST_01','1234');

--4. UPDATE NOT NULL -> NULL
UPDATE table_notnull
SET login_pwd = NULL
WHERE login_id = 'TEST_01';--NULL로 ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD")을 업데이트할 수 없습니다

--5. NOT NULL 제약 조건 조회
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

--CONSTRAINT_NAME : SYS_XXXXX 시스템이 이름 부여