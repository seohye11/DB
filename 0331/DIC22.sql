SELECT *
FROM dba_tables;

--DBA_USERS로 사용자 정보
SELECT * 
FROM dba_users t1
WHERE t1.username = 'SCOTT';