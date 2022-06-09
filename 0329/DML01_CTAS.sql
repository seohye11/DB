--DML : 데이터를 관리하는 방법
--INSERT 명령어
--UPDATE 명령어
--DELETE 명령어
--MERGE 명령어

--CTAS(테이블복제)
--CREATE TABLE new_테이블명
--AS SELECT * FROM 테이블명

--dept테이블 복사해서 dept_temp 테이블만들기
--테이블 생성
CREATE TABLE dept_temp
AS
SELECT * FROM dept;

--테이블 확인
SELECT * FROM dept_temp;

--테이블 삭제
DROP TABLE dept_temp;

--확정
COMMIT;

--되돌리기
ROLLBACK;