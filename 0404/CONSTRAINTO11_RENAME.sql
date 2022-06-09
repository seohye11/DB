--생성된 제약조건 이름 변경
--ALTER TABLE 테이블 이름
--RENAME CONSTRAINT 이전제약조건 이름 TO 바꿀제약조건이름

--SYS_C008236 -> TBL_NM22_TEL_NN 이름 변경
ALTER TABLE TABLE_NOTNULL2
RENAME CONSTRAINT SYS_C008236 TO TBL_NM22_TEL_NN
;

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name = 'TABLE_NOTNULL2'
;--제약 조건 조회