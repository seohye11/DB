--c_test ctest1_deptno_fk drop

ALTER TABLE c_test1
DROP CONSTRAINT ctest1_deptno_fk;

ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
ON DELETE SET NULL;--set null로 제약조건 변경

SELECT * FROM c_test1;
SELECT * FROM c_test2;

DELETE FROM c_test2 WHERE no = 20;
SELECT * FROM c_test1;