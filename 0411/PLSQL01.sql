--묵시적 커서 : 오라클에서 자동으로 선언되는 커서
-- DML문, SELECT INTO문 등이 실행될 때 자동으로 생성 및 처리
--SQL%NOTFOUND : 묵시적 커서 안에 추출한 행이 없으면 TRUE, DML반영이 없어도 TRUE
--SQL%FOUND : 묵시적 커서 안에 추출한 행이 있으면 TRUE, DML반영이 있으면 TRUE
--SQL%ROWCOUNT : 묵시적 커서에 현재까지 추출한 행 수 또는 DML 반영 행 수
--SQL%ISOPEN : 묵시적 커서는 자동으로 SQL문을 실행한 후 CLOSE되므로 항상 FALSE

UPDATE dept
SET dname = 'DATABASE'
WHERE deptno = 50;

SET SERVEROUTPUT ON;
DECLARE
    
BEGIN
    UPDATE dept
    SET dname = 'DATABASE'
    WHERE deptno = 50;
    
    DBMS_OUTPUT.PUT_LINE('갱신된 행의 수 : '|| SQL%ROWCOUNT);
    
    IF(SQL%FOUND)THEN
        DBMS_OUTPUT.PUT_LINE('갱신 대상 행 존재 여부 : TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('갱신 대상 행 존재 여부 : FLASE');
    END IF;

    IF(SQL%ISOPEN)THEN
        DBMS_OUTPUT.PUT_LINE('커서의 OPEN여부 : TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('커서의 OPEN여부  : FLASE');

    END IF;

END;
/