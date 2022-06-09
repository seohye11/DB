--INSERT문 오류

--1) 컬럼수와 데이터 수 불일치
INSERT INTO dept_temp(deptno,dname,loc)
VALUES(50,'DETABASE');--SQL 오류: ORA-00947: 값의 수가 충분하지 않습니다

INSERT INTO dept_temp(deptno,dname)
VALUES(50,'DATEBASE','SEOUL');--SQL 오류: ORA-00913: 값의 수가 너무 많습니다

--2) 숫자가 입력될 자리에 문자 입력
INSERT INTO dept_temp(deptno,dname,loc)
VALUES('FAIL','DATEBASE','SEOUL');--ORA-01722: 수치가 부적합합니다