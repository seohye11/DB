--레코드와 컬렉션
--레코드 : 자료형이 각기 다른 데이터를 하나의 변수에 저장하는데 사용
--TYPE 레코드 이름 IS RECORD(
--     변수 이름 자료형 NOT NULL := (또는 DEFAULT) 값 또는 표현식
--)
--RECORD의 정의 : 정의된 변수 선언

SET SERVEROUTPUT ON;
DECLARE
    --RECORD 정의
    TYPE REC_DEPT IS RECORD(
        deptno NUMBER(2) NOT NULL := 99,
        dname DEPT.DNAME%TYPE,
        loc DEPT.LOC%TYPE
    );
    --정의된 변수 선언
    dept_rec REC_DEPT;
BEGIN
    dept_rec.deptno := 20;
    dept_rec.dname := 'DATABASE';
    dept_rec.loc := 'SEOUL';
    
    DBMS_OUTPUT.PUT_LINE('deptno : ' || dept_rec.deptno);
    DBMS_OUTPUT.PUT_LINE('dname : ' || dept_rec.dname);
    DBMS_OUTPUT.PUT_LINE('loc : ' || dept_rec.loc);
END;
/