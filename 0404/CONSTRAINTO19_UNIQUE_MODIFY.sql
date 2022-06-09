--UNIQUE제약 조건 이름 직접 지정

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name IN('TABLE_UNIQUE2');

--RANAME----------------------------------------------------
ALTER TABLE table_unique2
RENAME CONSTRAINT SYS_C008244 TO TBLUNQ02_TEL_UNQ;--컬럼이름 변경

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name IN('TABLE_UNIQUE2');

--MODIFY : DROP -> MODIFY-----------------------------------
ALTER TABLE table_unique2
DROP CONSTRAINT TBLUNQ02_TEL_UNQ99;

ALTER TABLE table_unique2
MODIFY (tel CONSTRAINT TBLUNQ02_TEL_UNQ99 UNIQUE);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name IN('TABLE_UNIQUE2');