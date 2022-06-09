--테이블을 생성하면서 제약 조건 이름 직접 지정하기2
CREATE TABLE table_pk3(
    login_id VARCHAR2(20),
    login_pwd VARCHAR2(20) CONSTRAINT tablepk3_loginpwd_nn NOT NULL,
    tel VARCHAR2(20),
    CONSTRAINT tablepk3_loginid_pk PRIMARY KEY(login_id)
);