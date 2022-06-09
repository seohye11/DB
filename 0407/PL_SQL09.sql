--변수의 기본값 지정하기
--DEFAULT 키워드로 변수에 저장할 기본값을 지정
--변수 이름 지료형 DEFAULT 값 또는 표현식

SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO NUMBER(2) DEFAULT 10;
BEGIN
    DBMS_OUTPUT.PUT_LINE('V_DEPTNO : ' || V_DEPTNO);
END;
/