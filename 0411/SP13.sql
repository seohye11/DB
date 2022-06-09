--파라미터를 사용하는 프로시저
--CREATE OR REPLACE PROCEDURE 프로시저 이름
--[( 파라미터 이름1 자료형 := |DEFAULT 기본값,
--   파라미터 이름2 자료형 := |DEFAULT 기본값,
--
--   파라미터 이름N 자료형 := |DEFAULT 기본값
--)]
--IS | AS
--  선언부
--BEGIN
--  실행부
--EXCEPTION
--  예외처리부
--END[프로시저 이름];

--파라미터 모드
--IN : 지정하지 않으면 기본값 파람 입력
--OUT : 호출 반환값
--IN OUT : 입력과 반환 동시 가능

CREATE OR REPLACE PROCEDURE pro_param_in
( param1 IN NUMBER,
  param2 NUMBER, --MODE생략하면 IN
  param3 NUMBER := 3,
  param4 NUMBER DEFAULT 4
)
IS

BEGIN
    DBMS_OUTPUT.PUT_LINE('param1 : '||param1);
    DBMS_OUTPUT.PUT_LINE('param2 : '||param2);
    DBMS_OUTPUT.PUT_LINE('param3 : '||param3);
    DBMS_OUTPUT.PUT_LINE('param4 : '||param4);
END;
/--프로시저 생성



