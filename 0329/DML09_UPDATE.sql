--UPDATE 테이블에 있는 데이터 변경하기
--UPDATE table이름
--SET column01 = 값1,
--    column02 = 값2
--      ...
--WHERE 조건;

--DEPT COPY dept_temp2로 생성
CREATE TABLE dept_temp2
AS
SELECT * FROM dept;

SELECT * FROM dept_temp2;

