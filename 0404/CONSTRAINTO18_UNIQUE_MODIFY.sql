UPDATE table_unique
SET tel = '010-1235-5678'
WHERE login_id = 'TEST_ID_01';

UPDATE table_unique
SET tel = '010-1236-5678'
WHERE login_id = 'TEST_ID_02';

ALTER TABLE table_unique
MODIFY (tel UNIQUE);

SELECT * FROM table_unique;

--UNIQUE �÷� NULL�� UPDATE
UPDATE table_unique
SET tel = NULL;--unique�ص� null�� �ٰ� �Է� ����

SELECT * FROM table_unique;