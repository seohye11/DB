SELECT *
FROM dba_tables;

--DBA_USERS�� ����� ����
SELECT * 
FROM dba_users t1
WHERE t1.username = 'SCOTT';