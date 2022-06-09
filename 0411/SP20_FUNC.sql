--함수(function) : 오라클 함수는 내장함수, 사용자 정의 함수

--CREATE OR REPLACE FUNCTION 함수이름
--[(
--    파라메터이름1 [IN] 자료형1,
--    파라메터이름2 [IN] 자료형2,  
--    
--    파라메터이름N [IN] 자료형N
--)]
--RETURN 자료형
--IS | AS
--    선언부
--BEGIN
--    실행부
--    RETURN(반환값);
--EXCEPTION
--    예외처리
--END[함수이름];

CREATE OR REPLACE FUNCTION func_aftertax(
    sal IN NUMBER
)
RETURN NUMBER
IS
    tax NUMBER := 0.05;
BEGIN
    RETURN ROUND(sal - (sal * tax));
END func_aftertax;
/