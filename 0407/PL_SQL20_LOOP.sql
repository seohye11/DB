SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('V_NUM : '|| V_NUM);
        V_NUM := V_NUM + 1;
        EXIT WHEN V_NUM > 11;
    END LOOP;
END;
/

--LOOP -> iF문으로
SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('V_NUM : '|| V_NUM);
        V_NUM := V_NUM + 1;
        IF V_NUM >11 THEN
            EXIT;--자바의 BREAK;
        END IF;
    END LOOP;
END;
/