--WHILE LOOP : 특정 조건식의 결과를 통해 반복 수행
--WHILE 조건식 LOOP
--      수행 문장;
--END LOOP;

SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 1;
BEGIN
    WHILE V_NUM < 11 LOOP
        DBMS_OUTPUT.PUT_LINE(V_NUM);
        V_NUM := V_NUM + 1;
    END LOOP;
END;
/