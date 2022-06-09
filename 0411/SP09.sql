--저장 서브프로그램 
-- : 이름을 지정해서 반복해서 사용, ORACLE 컴파일, 저장됨
--저장프로시저 : 일반적으로 특정 처리 작업 수행을 위한 서브프로그램으로 SQL문에서 사용 불가
--저장함수 : 일반적으로 특정 연산을 거친 결과 값을 반환, 서브프로그램으로 SQL문에서 사용 가능
--패키지 : 저장 서브프로그램을 그룹화하는데 사용
--트리거 : 특정 상황(이벤트)이 발생할 때 자동으로 수행되는 기능

--CREATE OR REPLACE PROCEDURE 프로시저 이름
--IS | AS
--  선언부
--BEGIN
--  실행부
--EXCEPTION
--  예외처리부
--END[프로시저 이름];

--CREATE OR REPLACE -> 지정한 프로시저 이름을 가진 프로시저가 존재하면
--                     작성한 내용으로 대체
--PROCEDURE 프로시저 이름 -> 고유 이름을 지정 같은 스키마 내에서

CREATE OR REPLACE PROCEDURE PRO_NOPARAM
IS
    V_EMPNO NUMBER(4) := 7788;
    V_ENAME VARCHAR(10);
BEGIN
    V_ENAME := 'SCOTT';
    DBMS_OUTPUT.PUT_LINE('V_EMPNO : '|| V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('V_ENAME : '|| V_ENAME);
END;
/

--실행 : EXECUTE 프로시저 이름
EXECUTE PRO_NOPARAM;