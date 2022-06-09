--DDL(Data Definition Language) : 명령어를 수행하자마자 데이터 베이스에 바로  반영
--CREATE(생성),ALTER(수정),TRUNCATE(잘라내기),DROP(삭제)

--CREATE : 데이터베이스 객체를 생성하는데 사용하는 명령어
--CREATE TABLD 소유 계정.테이블 이름(
--      열1이름 열1자료형,
--      열2이름 열2자료형,
--      열3이름 열3자료형,...)

--EMP_DDL 테이블 생성
CREATE TABLE scott.emp_ddl(--scott은 생략가능
empno NUMBER (4),
ename VARCHAR2 (10),
job VARCHAR2 (9),
mgr NUMBER (4),
hiredate DATE,
sal NUMBER (7,2),
comm NUMBER (7,2),
deptno NUMBER (2)
);

--테이블 구조 확인
DESC emp_ddl;

--TABLE COMMENT
COMMENT ON TABLE emp_ddl IS '사원';

--COLUMN COMMENT
COMMENT ON COLUMN emp_ddl.empno IS '사번';
COMMENT ON COLUMN emp_ddl.ename IS '이름';
COMMENT ON COLUMN emp_ddl.job IS'직급';
COMMENT ON COLUMN emp_ddl.mgr IS '매니저';
COMMENT ON COLUMN emp_ddl.hiredate IS '입사일';
COMMENT ON COLUMN emp_ddl.sal IS '급여';
COMMENT ON COLUMN emp_ddl.comm IS '수당';
COMMENT ON COLUMN emp_ddl.deptno IS '부서번호';