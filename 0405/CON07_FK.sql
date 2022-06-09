--FOREIGN KEY(FK)지정하기

--CREATE TABLE 테이블이름{
--  열자료형 CONSTRAINT[제약조건이름] references 참조테이블(참조할 컬럼)
--)

--CREATE TABLE 테이블이름{
--  열자료형 references 참조테이블(참조할 컬럼)
--)

--CREATE TABLE 테이블이름{
--  열자료형 
--  CONSTRAINT[제약조건이름]FOREIGN KEY(열) references 참조테이블(참조할 컬럼)
--)

CREATE TABLE dept_fk(
    deptno NUMBER(2) CONSTRAINT deptfk_deptno_pk PRIMARY KEY,
    dnaem VARCHAR2(14),
    loc VARCHAR2(13)
);

--emp fk 테이블 생성
CREATE TABLE emp_fk(
empno NUMBER(4) CONSTRAINT empfk_empno_pk PRIMARY KEY,
ename VARCHAR2(10),
job VARCHAR2(9),
mgr NUMBER(4),
hiredate DATE,
sal NUMBER(7,2),
comm NUMBER(7,2),
deptno NUMBER(2) CONSTRAINT empfk_deptno_fk references dept_fk(deptno)
);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN('DEPT_FK','EMP_FK')
;