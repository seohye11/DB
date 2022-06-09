--테이블을 생성하며 제약조건 이름 직접 지정하기

CREATE TABLE table_unique2(
    LOGIN_ID VARCHAR2(20 BYTE) CONSTRAINT TBLUNQ02_LOGINID_UNQ UNIQUE,
    LOGIN_PWD VARCHAR2(20) CONSTRAINT TBLUNQ02_LOGINPWD_NN NOT NULL,
    tel VARCHAR2(20)
);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name = 'TABLE_UNIQUE2'