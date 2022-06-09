--CTAS로 DEPT_RECORD 테이블생성
CREATE TABLE DEPT_RECORD
AS
SELECT * FROM dept;

SELECT * FROM DEPT_RECORD;

--레코드 사용해 입력
SET SERVEROUTPUT ON;
DECLARE
    --RECORD정의
    TYPE REC_DEPT IS RECORD(
        deptno NUMBER(2) NOT NULL := 99,
        dname DEPT_RECORD.DNAME%TYPE,
        loc DEPT_RECORD.LOC%TYPE
    );
    --RECORD 선언
    dept_rec REC_DEPT;
BEGIN
    dept_rec.deptno := 70;
    dept_rec.dname := 'DEVELOPER';
    dept_rec.loc := 'SHINCHON';
    
    INSERT INTO DEPT_RECORD
    VALUES dept_rec;
    
    COMMIT;
END;
/

--입력데이터 확인
SELECT * FROM DEPT_RECORD;
