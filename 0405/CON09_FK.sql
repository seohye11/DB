--dept_fk의 10번 부서 삭제
DELETE FROM dept_fk
WHERE deptno = 10;
--무결성 제약조건(SCOTT.EMPFK_DEPTNO_FK)이 위배되었습니다- 자식 레코드가 발견되었습니다
--자식 레코드에 데이터 있으면 부모키 데이터 삭제 불가능

--1. emp_fk(자식) 테이블로 가서 deptno = 10인 데이터 삭제 후 
--dept_fk(부모) 테이블의 deptno = 10인 데이터 삭제
--=

-- * parent 테이블과 자식테이블 참조 데이터 삭제 처리
--1) 열 데이터 삭제
--CONSTRAINT[제약조건이름]REFERENCES 참조 테이블(참조컬럼)
--ON DELETE CASCADE;

--2)열 데이터를 NULL로 변경
--CONSTRAINT[제약조건이름]REFERENCES 참조 테이블(참조컬럼)
--ON DELETE SET NULL;