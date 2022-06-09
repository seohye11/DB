--ALTER(수정)
--이미 생성된 오라클 데이터 베이스 객체를 변경할 때 사용
--1) 새 열을 추가, 삭제, 열의 자료형 또는 길이 변경
CREATE TABLE dept6
AS
SELECT dcode, dname
FROM dept2
WHERE dcode IN (1000,1001,1002);--테이블 복사(CTAS)

SELECT * FROM dept6;--테이블 복사 확인

ALTER TABLE dept6
ADD(locations VARCHAR2(10));--컬럼 추가

SELECT * FROM dept6;--컬럼 추가 확인

ALTER TABLE dept6
ADD(location2 VARCHAR2(10) DEFAULT 'SEOUL');--DEFAULT 속성으로 
--                                            컬럼추가
SELECT * FROM dept6;--컬럼 추가 확인

