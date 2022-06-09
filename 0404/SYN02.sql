--SYNONYM(�ó��- ���Ǿ�)
-- : ���Ǿ�� ���̺�, ��, ������ �� ��ü �̸� ��� ����� �� �ִ� �ٸ� �̸�
--   ���Ǽ�, ����

--CREATE [PUBLIC SYNONTM ���Ǿ� �̸�]
--FOR[�����]��ü�̸�

--PUBLIC : �����ͺ��̽� �� ��� ����ڰ� ����� �� �ֵ��� ����, ������ ��� ���� �����
--���Ǿ� �̸�(�ʼ�) : ������ ���Ǿ� �̸�
--����� : ������ ���Ǿ��� ���� ��ü ���� ����ڸ� ����, �����ϸ� �α��� �����
--��ü�̸�(�ʼ�) : ���Ǿ ������ ��� ��ü �̸� 

--scott ����ڿ� emp ���̺��� ���Ǿ�� e�� ���� private SYNONYM
CREATE SYNONYM e FOR emp;

--���Ǿ� E�� ���ؼ� SELECT, dml�۾� ����
SELECT * 
FROM e;

--scott ����ڿ� dept ���̺��� ���Ǿ�� d2�� ���� public synonym
CREATE PUBLIC SYNONYM d2 FOR dept;

SELECT * 
FROM d2;

--PRIVATE SYNONYM ��ȸ
SELECT t1.synonym_name,
       t1.table_owner,
       t1.table_name
FROM user_synonyms t1
WHERE t1.table_name = 'EMP'
;