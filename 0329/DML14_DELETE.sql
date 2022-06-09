--테이블에 있는 데이터 삭제하기
--DELETE FROM table
--WHERE 조건;

--emp copy해서 emp_temp2생성
CREATE TABLE emp_temp2
AS
SELECT * FROM emp;

SELECT * FROM emp_temp2;