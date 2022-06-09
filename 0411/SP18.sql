--프로시저 오류 정보 확인하기 : 프로시저 생성할 때 발생하는 오류 확인

CREATE OR REPLACE PROCEDURE pro_err
IS
    err_no NUMBER;
BEGIN
    err_no = 100; -- :제거(오류)
    
    DBMS_OUTPUT.PUT_LINE('err_no : '|| err_no);
END;
/--컴파일 오류와 함께 프로시저가 생성

--SHOW ERRORS로 오류 확인
SHOW ERRORS 

SHOW ERR PROCEDURE PRO_ERR;
