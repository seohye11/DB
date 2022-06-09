--UNIQUE INDEX
-- : 인덱스를 만드는 컬럼에 중복되는 데이터가 없다
--unique index가 성능은 좋지만 혹시 현재 중복된 값이 없다하더라도
--향후에 중복된 값이 입력될 가능성이 있는 컬럼에는 사용될 수 없음

--CREATE UNIQUE INDEX 인덱스명
--ON 테이블 이름(컬럼 ASC|DESC, 컬럼 ASC|DESC)
DESC dept2;
SELECT * FROM dept2;

--dept2테이블에 dname에 unique index생성
CREATE UNIQUE INDEX idx_dept2_dname
ON dept2(dname); --인덱스 생성

INSERT INTO dept2 
VALUES(9100,'temp01','1006','Seoul Branch Office');

--dname 중복값 추가해보기
INSERT INTO dept2 
VALUES(9101,'temp01','1006','Seoul Branch Office');
--> 무결성 제약 조건(SCOTT.IDX_DEPT2_DNAME)에 위배됩니다

--unique index가 성능은 좋지만 혹시 현재 중복된 값이 없다하더라도
--향후에 중복된 값이 입력될 가능성이 있는 컬럼에는 사용될 수 없음