--ALTER(수정)
--2) 테이블의 컬럼 이름 변경
--location2 -> loc로 변경
ALTER TABLE dept6
RENAME COLUMN location2 TO loc;

SELECT * FROM dept6;--컬럼 이름 변경 확인