--p309
SELECT * FROM dept;

--테이블 생성
CREATE TABLE dept_hw
AS SELECT * FROM dept;

UPDATE dept_hw
SET dname = 'DATABASE',
    loc = 'SEOUL'
WHERE deptno = 30;