ALTER SESSION SET  "_oracle_script" = true;

CREATE USER ORCLSTUDY
IDENTIFIED BY ORCL;

--RESOURCE : ����ڰ� ���̺�, �������� ����� ���� ��ü�� ������ �� �ִ�
--�⺻ �ý��� ������ ���� ���� ��
--CREATE SESSION : ����Ŭ ���� ����
GRANT RESOURCE, CREATE SESSION, CREATE TABLE,INSERT ANY TABLE  TO ORCLSTUDY;
ALTER USER ORCLSTUDY DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

--ORCLSTUDY ����
--���̺� ����
CREATE TABLE TEMP2(
    COL1 VARCHAR2(20),
    CLO2 VARCHAR2(20)
);

--������ �Է�
INSERT INTO temp2 VALUES ('USER','GRANT_TEST');