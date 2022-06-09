--이미생성된 테이블에 제약 조건 추가하기
--테이블 생성 후 추가
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP_FK')
;

--emp_fk 테이블 ename컬럼에 unique 제약 조건 생성 EMPFK_ENAME_UK
ALTER TABLE emp_fk
ADD CONSTRAINT empfk_ename_uk UNIQUE (ename);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP_FK')
;

