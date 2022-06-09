--FOR LOOP : 반복 횟수를 알고 있는 경우 사용
--FOR i IN REVERSE 시작값..종료값 LOOP 
--         수행문장;
--END LOOP;
---> 거꾸로 수행

SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('i : '|| i);
    END LOOP;
END;
/