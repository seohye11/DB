--USER_ID : ORCLSTUDY
--��� : ORACLE

CREATE USER ORCLSTUDY
IDENTIFIED BY ORACLE;--���� ����� �Ǵ� �� �̸��� �������մϴ�.

ALTER SESSION SET  "_oracle_script" = true;
--������ �ȵ�->���� ���� �Ҵ� ���� ����

CREATE USER ORCLSTUDY
IDENTIFIED BY ORACLE;--��������

--���� �Ҵ�
GRANT CREATE SESSION TO ORCLSTUDY;

SELECT * 
FROM ALL_USERS t1
WHERE t1.username = 'ORCLSTUDY'
;

--����� ��� ���� (ORATCLE -> ORCL)
ALTER USER ORCLSTUDY
IDENTIFIED BY ORCL;

--����� �����ϱ�
ALTER SESSION SET "_oracle_script" = true;

DROP USER ORCLSTUDY CASCADE;--CASCADE : ����ڿ� ��ü ��� ����

