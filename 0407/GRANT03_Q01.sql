--���̺� �����̽� : PREV_HW_TS
--���� : PREV_HW
--��� : ORCL

SELECT tablespace_name,
       file_name
FROM dba_data_files;

--1. ���̺� �����̽� ����
CREATE TABLESPACE PREV_HW_TS
DATAFILE 'C:\APP\LG\PRODUCT\18.0.0\ORADATA\XE\PREV_HW_TS01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 30M;

--2. ����� ����
ALTER SESSION SET "_oracle_script" = true;

CREATE USER PREV_HW
IDENTIFIED BY ORCL
DEFAULT TABLESPACE PREV_HW_TS
TEMPORARY TABLESPACE temp
QUOTA UNLIMITED on PREV_HW_TS;

-- 3. ���� �ο�
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO PREV_HW;

--prev_hw ����-------------

-- 1. ���̺� ����
CREATE TABLE dept (
    deptno NUMBER(4) CONSTRAINT PK_DEPT PRIMARY KEY,
    dname VARCHAR2(30),
    loc VARCHAR2(50)
);

desc dept;

--2. ������ ����
INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');

-- 3. ��ȸ
SELECT * FROM dept;