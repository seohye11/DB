--EXCEPTION : 프로그램이 실행되는 중에 발생되는 오류
--Predefined Oracle Exception
--Userdefaind Exception

SELECT dname
FROM dept
WHERE deptno = 10;

SET SERVEROUTPUT ON;
DECLARE
    V_WRONG NUMBER;
BEGIN
    --문자열을  NUMBER에 할당
    SELECT dname INTO V_WRONG
    FROM dept
    WHERE deptno = 10;
END;
/--수치 또는 값 오류: 문자를 숫자로 변환하는데 오류입니다