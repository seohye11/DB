GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO ORCLSTUDY;

--���� ���
--revoke[����]FROM[������̸�/��/public]
--GRANT�δ� ���� �ο� revoke
ALTER SESSION SET "_oracle_script" = true;
REVOKE RESOURCE, CREATE TABLE FROM ORCLSTUDY;

