--�̹� ������ ���̺� ���� ���� ����
--TABLE_NOTNULL, ��ȭ��ȣ(Tel)�� NOT NULL �߰�

--ALTER TABLE ���̺��̸�
--MODIFY(�÷� ���� ����)

ALTER TABLE table_notnull
MODIFY( TEL NOT NULL);--������� ���� �Ұ� - �� ���� �߰ߵǾ����ϴ�.

SELECT *
FROM table_notnull;--tel�� null

UPDATE table_notnull
SET TEL = '010-1234-5678'
WHERE login_id = 'TEST_01'--tel�� ������ ����
;

COMMIT;

SELECT * FROM table_notnull;--����Ȯ��

ALTER TABLE table_notnull
MODIFY (tel NOT NULL);--tel not null�� ����

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name = 'TABLE_NOTNULL'
;--���� ���� ��ȸ