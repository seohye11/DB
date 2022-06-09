--함수 실행
--1)프로시저
SET SERVEROUTPUT ON;
DECLARE
    after_tax  NUMBER;
BEGIN
    after_tax := func_aftertax(3000);
    
    DBMS_OUTPUT.PUT_LINE('after_tax income : '|| after_tax);
END;
/