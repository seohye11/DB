--CTAS(테이블 복사)
--4) 테이블 구조만 생성
CREATE TABLE dept_ddl_40
AS
SELECT * FROM dept
WHERE 1 = 2;

SELECT * FROM dept_ddl_40;--생성 확인