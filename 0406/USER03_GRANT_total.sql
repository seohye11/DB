--TABLESPACE, ����, ���� �Ҵ�
--TEMP01.DBF
--table,�������Է�

--goobman / pcwk
--tablespace / goobman_ts.DBS

--CREATE USER goobman
--IDENTIFIED BY pcwk
--DEFAULT TABLESPACE goobman_ts
--TEMPORARY TABLESPACE temp


--tablespace ���� Ȯ��
SELECT tablespace_name, 
       file_name
FROM dba_data_files;

--���̺� �����̽� ����
CREATE TABLESPACE goobman_ts
DATAFILE 'C:\APP\LG\PRODUCT\18.0.0\ORADATA\XE\goobman01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 30M;

--����� ����
ALTER SESSION SET "_oracle_script" = true;

--tablespace ���� Ȯ��
SELECT tablespace_name, 
       file_name
FROM dba_data_files;

CREATE USER goobman
IDENTIFIED BY pcwk
DEFAULT TABLESPACE GOOBMAN_TS
TEMPORARY TABLESPACE temp;

--���Ѻο�
--GRANT DBA TO goobman;
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO goobman;
ALTER USER goobman DEFAULT TABLESPACE goobman_ts QUOTA UNLIMITED ON goobman_ts;


--goobman���� ���� : TABLE,INSERT,SELECT

