--테이블에 날짜 데이터 입력하기
--emp테이블을 copy해서 emp_temp생성, 단 데이터는 가져오지 않는다

CREATE TABLE emp_temp
AS
SELECT * FROM emp
WHERE 1 <> 1; --1과1은 같지않다=>데이터를 가져오지 않고 테이블 구조만 복사

SELECT * FROM emp_temp;

