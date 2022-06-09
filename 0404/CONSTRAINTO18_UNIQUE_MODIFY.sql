UPDATE table_unique
SET tel = '010-1235-5678'
WHERE login_id = 'TEST_ID_01';

UPDATE table_unique
SET tel = '010-1236-5678'
WHERE login_id = 'TEST_ID_02';

ALTER TABLE table_unique
MODIFY (tel UNIQUE);

SELECT * FROM table_unique;

--UNIQUE 컬럼 NULL로 UPDATE
UPDATE table_unique
SET tel = NULL;--unique해도 null은 다건 입력 가능

SELECT * FROM table_unique;