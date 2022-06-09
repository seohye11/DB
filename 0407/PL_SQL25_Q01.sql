--1~10 사이 숫자 중 홀수일 때만 출력

SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN 1..10 LOOP
        CONTINUE WHEN MOD(i,2) = 0;--나머지가 0이면 건너뛰기
        DBMS_OUTPUT.PUT_LINE('i : ' || i);
    END LOOP;
END;
/