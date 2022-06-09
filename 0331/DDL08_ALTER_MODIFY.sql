--ALTER(수정)
--4) 컬럼의 데이터 크기(사이즈) 변경

DESC dept7;  --데이터 사이즈 확인

--loc VARCHAR2(10) -> VARCHAR2(20)으로 변경
ALTER TABLE dept7
MODIFY (loc VARCHAR2(20));

