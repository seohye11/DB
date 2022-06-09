--CTAS(테이블 복사)
--2) 특정 컬럼만 복사
CREATE TABLE dept3
AS
SELECT deptno,dname
FROM dept;

SELECT * FROM dept3;--생성 확인