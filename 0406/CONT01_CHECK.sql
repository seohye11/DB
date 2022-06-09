--데이터 형태와 범위를 정하는 CHECK
-- : 열에 저장할 수 있는 값의 범위 또는 패턴을 정의할 때 사용

--비밀번호 길이를 3자 이상 입력하도록 테이블에서 설정
CREATE TABLE table_check(
    login_id VARCHAR2(20)
    CONSTRAINT tblch_loginid_pk PRIMARY KEY,
    login_pwd VARCHAR2(20) 
    CONSTRAINT tblch_loginpwd_ch CHECK(LENGTH(login_pwd) > 3),
    tel VARCHAR2(20)
);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name IN ('TABLE_CHECK');

--데이터삽입
INSERT INTO table_check (
    login_id,
    login_pwd,
    tel
) VALUES (
    'TEST_ID',
    '123',--CHECK(LENGTH(login_pwd)>3 : 3자리 초과 가능
    '010-1234-5678'
);--체크 제약조건(SCOTT.TBLCH_LOGINPWD_CH)이 위배되었습니다

--데이터삽입
INSERT INTO table_check (
    login_id,
    login_pwd,
    tel
) VALUES (
    'TEST_ID',
    '1234',--CHECK(LENGTH(login_pwd)>3 : 3자리 초과 가능
    '010-1234-5678'
);