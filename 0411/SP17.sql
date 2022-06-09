--16¹ø ½ÇÇà

SET SERVEROUTPUT ON;
DECLARE
    no NUMBER;
BEGIN
    no := 9;
    pro_inout(no);
    
    DBMS_OUTPUT.PUT_LINE('no : '|| no);
END;
/