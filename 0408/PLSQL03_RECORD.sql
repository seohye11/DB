--레코드를 사용한 UPDATE

SET SERVEROUTPUT ON;
DECLARE
    --RECORD 정의
    TYPE rec_dept IS RECORD(
        deptno NUMBER(2) NOT NULL := 99,
        dname DEPT_RECORD.DNAME%TYPE,
        loc DEPT_RECORD.LOC%TYPE
    );
    --RECORD 선언
    dept_rec REC_DEPT;
BEGIN
    dept_rec.deptno := 50;
    dept_rec.dname := 'WEB DEV';
    dept_rec.loc := 'HONGDAE';
    
    --SET ROW : 로우 전체 데이터 할당
    UPDATE DEPT_RECORD
    SET ROW = dept_rec
    WHERE deptno = 70;
    
    COMMIT;
END;
/

SELECT * FROM DEPT_RECORD;