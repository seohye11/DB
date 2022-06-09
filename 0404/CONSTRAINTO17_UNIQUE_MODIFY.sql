--이미 생성한 테이블에 제약 조건 지정
--TABLE_UNIQUE2 테이블 TEL 컬럼에 UNIQUE추가

ALTER TABLE table_unique2
MODIFY (tel UNIQUE);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name IN('TABLE_UNIQUE2');