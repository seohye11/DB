--테이블에 데이터 추가하는 INSERT문
--INSERT INTO table[(컬럼1,컬럼2,컬럼3,...)]
--VALUES(value1,value2,value3,...);

--DESC dept_temp;

--부서번호 : 50
--부서명 : 'DATABASE'
--지역 : 'SEOUL'

INSERT INTO dept_temp (deptno, dname, loc)
VALUES (50,'DATABASE','SEOUL');

--확정
COMMIT;

SELECT *
FROM dept_temp;

ROLLBACK;