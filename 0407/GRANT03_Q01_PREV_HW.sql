-- 1. 테이블 생성
CREATE TABLE dept (
    deptno NUMBER(4) CONSTRAINT PK_DEPT PRIMARY KEY,
    dname VARCHAR2(30),
    loc VARCHAR2(50)
);

desc dept;

--2. 데이터 삽입
INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');

-- 3. 조회
SELECT * FROM dept;