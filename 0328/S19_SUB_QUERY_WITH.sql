--�������� ������ ����� ��ġ
SELECT t1.tablespace_name,
       t1.bytes/1024/1024 MB,
       t1.file_name
FROM dba_data_files t1
;

--�ʿ��� ��ŭ �ڵ����� ����뷮�� �����ǵ��� ����
ALTER DATABASE DATAFILE 'C:\APP\LG\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF'
AUTOEXTEND ON;