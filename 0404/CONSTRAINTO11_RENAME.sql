--������ �������� �̸� ����
--ALTER TABLE ���̺� �̸�
--RENAME CONSTRAINT ������������ �̸� TO �ٲ����������̸�

--SYS_C008236 -> TBL_NM22_TEL_NN �̸� ����
ALTER TABLE TABLE_NOTNULL2
RENAME CONSTRAINT SYS_C008236 TO TBL_NM22_TEL_NN
;

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1 
WHERE t1.table_name = 'TABLE_NOTNULL2'
;--���� ���� ��ȸ