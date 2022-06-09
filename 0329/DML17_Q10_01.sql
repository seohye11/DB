CREATE TABLE CHAP10HW_EMP AS SELECT * FROM emp;
CREATE TABLE CHAP10HW_DEPT AS SELECT * FROM dept;
CREATE TABLE CHAP10HW_SALGRADE AS SELECT * FROM salgrade;

INSERT INTO chap10hw_dept (deptno,dname,loc) VALUES (50,'ORACLE','BUSAN');
INSERT INTO chap10hw_dept VALUES (60,'SQL','ILSAN');
INSERT INTO chap10hw_dept VALUES (70,'SELECT','INCHEON');
INSERT INTO chap10hw_dept VALUES (80,'DML','BUNDANG');

SELECT *
FROM chap10hw_dept
;
