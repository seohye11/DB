--제약 조건 : 테이블에 저장할 데이터를 제약하는 특수한 규칙
--NOT NULL : 이 조건이 설정된 컬럼에는 null값이 입력되지 못하도록 한다
--UNLQUE : 이 조건이 설정된 컬럼에는 중복된 값이 입력되지 못한다
--PRIMARY KEY : NOT NULL + UNIQUE의 특징을 가지며 테이블 내에서 
--             데이터들끼리의 유일성을 보장하는 컬럼에 설정, 테이블당 1개만 설정
--FOREIGN KEY : 이 조건은 다른 테이블의 컬럼을 참조해서 검사를 한다
--CHECK : 이 조건에서 설정된 값만 입력을 허용하고 나머지는 거부된다

--유일하게 하나만 있는 값 PRIMARY KEY
--특정 열을 pk지정하면 해당 열에는 자동으로 인덱스가 만들어진다

--테이블 생성시 pk 지정(pk생성하면 인덱스 자동 생성)
--테이블 생성
CREATE TABLE table_pk(
    login_id VARCHAR2(20) PRIMARY KEY,
    login_pwd VARCHAR2(20) NOT NULL,
    tel VARCHAR2(20)
);

--테이블 구조 조회
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_PK'
;

--USER_INDEXES 조회
SELECT t1.index_name,
       t1.table_owner,
       t1.table_name
FROM user_indexes t1
WHERE t1.table_name LIKE 'TABLE_PK%'
;

