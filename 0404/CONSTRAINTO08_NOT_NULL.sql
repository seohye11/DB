--제약 조건 이름 직접 지정

--1. 테이블 생성
CREATE TABLE table_notnull2(
    LOGIN_ID VARCHAR2(20 BYTE) CONSTRAINT TBL_NM2_LOGIN_ID_NN not null,
    LOGIN_PWD VARCHAR2(20) CONSTRAINT TBL_NM2_LOGIN_PWD_NN not null,
    tel VARCHAR2(20)
);

--NOT NULL 제약 조건 조회
--USER_CONSTRAINTS
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name = 'TABLE_NOTNULL2'
;