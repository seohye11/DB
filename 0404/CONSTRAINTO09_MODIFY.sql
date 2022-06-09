--이미 생성한 테이블에 제약 조건 지정
--TABLE_NOTNULL, 전화번호(Tel)에 NOT NULL 추가

--ALTER TABLE 테이블이름
--MODIFY(컬럼 제약 조건)

ALTER TABLE table_notnull
MODIFY( TEL NOT NULL);--사용으로 설정 불가 - 널 값이 발견되었습니다.

SELECT *
FROM table_notnull;--tel이 null

UPDATE table_notnull
SET TEL = '010-1234-5678'
WHERE login_id = 'TEST_01'--tel에 데이터 삽입
;

COMMIT;

SELECT * FROM table_notnull;--삽입확인

ALTER TABLE table_notnull
MODIFY (tel NOT NULL);--tel not null로 변경

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name = 'TABLE_NOTNULL'
;--제약 조건 조회