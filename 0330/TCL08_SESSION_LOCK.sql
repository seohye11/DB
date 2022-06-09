--수정 중인 데이터 접근을 막는 LOCK
SELECT * FROM dept_tcl;

--deptno = 30의 LOC = 'SEOUL'
UPDATE dept_tcl
SET loc = 'SEOUL'
WHERE deptno = 30;
--sqlplus에서 수정 후 커밋 하기 전까지 디벨롭에서 수정안 됨