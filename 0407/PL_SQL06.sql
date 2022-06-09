--PL/SQL

--DECLARE
--BEGIN
--EXCEPTION
--END;
--/
--DECLARE : 선언부 (변수, 상수, 커서 등)
--BEGIN : 실행부 (조건, 반복, SELECT, DML, 함수)
--EXCEPTION : 예외처리 (PL/SQL실행 중 발생하는 예외처리)

--Hello, world
--실행 결과를 화면에 출력
SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello, world');
END;
/