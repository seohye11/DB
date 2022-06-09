--1~10 사이 숫자 중 짝수일 때만 출력

SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN 1..10 LOOP
        CONTINUE WHEN MOD(i,2) = 1;--나머지가 1이면 건너뛰기
        DBMS_OUTPUT.PUT_LINE('i : ' || i);
    END LOOP;
END;
/