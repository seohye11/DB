--TABLESPACE, 계정, 권한 할당
--TEMP01.DBF
--table,데이터입력

--goobman / pcwk
--tablespace / goobman_ts.DBS

--CREATE USER goobman
--IDENTIFIED BY pcwk
--DEFAULT TABLESPACE goobman_ts
--TEMPORARY TABLESPACE temp


--tablespace 정보 확인
SELECT tablespace_name, 
       file_name
FROM dba_data_files;

--테이블 스페이스 생성
CREATE TABLESPACE goobman_ts
DATAFILE 'C:\APP\LG\PRODUCT\18.0.0\ORADATA\XE\goobman01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 30M;

--사용자 생성
ALTER SESSION SET "_oracle_script" = true;

--tablespace 정보 확인
SELECT tablespace_name, 
       file_name
FROM dba_data_files;

CREATE USER goobman
IDENTIFIED BY pcwk
DEFAULT TABLESPACE GOOBMAN_TS
TEMPORARY TABLESPACE temp;

--권한부여
--GRANT DBA TO goobman;
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO goobman;
ALTER USER goobman DEFAULT TABLESPACE goobman_ts QUOTA UNLIMITED ON goobman_ts;


--goobman으로 접속 : TABLE,INSERT,SELECT

