--�̹� ������ ���̺� ���� ���� ����
--TABLE_UNIQUE2 ���̺� TEL �÷��� UNIQUE�߰�

ALTER TABLE table_unique2
MODIFY (tel UNIQUE);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name IN('TABLE_UNIQUE2');