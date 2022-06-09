--CTAS(테이블 복사)
--1) 모든 컬럼 복사
CREATE TABLE dept_ddl
AS
SELECT * FROM dept;

SELECT * FROM dept_ddl;--생성 확인