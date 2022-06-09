-- * parent 테이블과 자식테이블 참조 데이터 삭제 처리
--1) 열 데이터 삭제
--CONSTRAINT[제약조건이름]REFERENCES 참조 테이블(참조컬럼)
--ON DELETE CASCADE;

--2)열 데이터를 NULL로 변경
--CONSTRAINT[제약조건이름]REFERENCES 참조 테이블(참조컬럼)
--ON DELETE SET NULL;

--STEP1. c_test1, c_test2 테이블 생성
CREATE TABLE c_test1(
    no NUMBER,
    name VARCHAR2(20),
    deptno NUMBER
);

CREATE TABLE c_test2(
    no NUMBER,
    name VARCHAR2(20)
);

--STEP2. 두 개의 테이블에 제약 조건을 설정, 데이터 입력
--c_test1_deptno_fk 참조키 없이 생성
ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
;--이 열목록에 대해 일치하는 고유 또는 기본 키가 없습니다.
-->부모키 먼저 수정해야 함
ALTER TABLE c_test2
ADD CONSTRAINT ctest2_no_uk UNIQUE(no);

ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
ON DELETE CASCADE
;

--데이터 삽입
INSERT INTO c_test2 VALUES (10,'AAA');
INSERT INTO c_test2 VALUES (20,'BBB');
INSERT INTO c_test2 VALUES (30,'CCC');

SELECT * FROM c_test2;

COMMIT;

INSERT INTO c_test1 VALUES (1,'apple',10);
INSERT INTO c_test1 VALUES (2,'banana',20);
INSERT INTO c_test1 VALUES (3,'cherry',30);

SELECT * FROM c_test1;

COMMIT;

INSERT INTO c_test1 VALUES (4,'peach',40);
--무결성 제약조건(SCOTT.CTEST1_DEPTNO_FK)이 위배되었습니다- 부모 키가 없습니다

--on delete cascade 사용
DELETE FROM c_test2 WHERE NO = 10;
SELECT * FROM c_test1;
--부모테이블에서 데이터 on delete cascade 사용하면 자식테이블 데이터도 삭제

--조회
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('C_TEST1','C_TEST2')
;