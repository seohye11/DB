--DML : �����͸� �����ϴ� ���
--INSERT ��ɾ�
--UPDATE ��ɾ�
--DELETE ��ɾ�
--MERGE ��ɾ�

--CTAS(���̺���)
--CREATE TABLE new_���̺��
--AS SELECT * FROM ���̺��

--dept���̺� �����ؼ� dept_temp ���̺����
--���̺� ����
CREATE TABLE dept_temp
AS
SELECT * FROM dept;

--���̺� Ȯ��
SELECT * FROM dept_temp;

--���̺� ����
DROP TABLE dept_temp;

--Ȯ��
COMMIT;

--�ǵ�����
ROLLBACK;