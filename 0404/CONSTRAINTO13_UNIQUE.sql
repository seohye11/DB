--제약 조건 : 테이블에 저장할 데이터를 제약하는 특수한 규칙
--NOT NULL : 이 조건이 설정된 컬럼에는 null값이 입력되지 못하도록 한다
--UNLQUE : 이 조건이 설정된 컬럼에는 중복된 값이 입력되지 못한다
--PRIMARY KEY : NOT NULL + UNIQUE의 특징을 가지며 테이블 내에서 
--             데이터들끼리의 유일성을 보장하는 컬럼에 설정, 테이블당 1개만 설정
--FOREIGN KEY : 이 조건은 다른 테이블의 컬럼을 참조해서 검사를 한다
--CHECK : 이 조건에서 설정된 값만 입력을 허용하고 나머지는 거부된다

--중복되지 않는 값 UNIQUE : 열에 저장할 데이터의 중복을 허용하지 않고자 할 때 사용
--(단, 지정한 열에 NULL 값 여러개 존재 가능)

--테이블을 생성하며 제약 조건 지정

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