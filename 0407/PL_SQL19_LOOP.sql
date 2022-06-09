--반복문
--기본LOOP : 기본 반복문
--WHILE LOOP : 특정 조건식의 결과를 통해 반복 수행
--FOR LOOP : 반복 횟수를 알고 있는 경우 사용
--Cusor FOR LOOP : 커서를 활용한 반복문

--반복문 수행 중단
--EXIT : 수행중인 반복문 종료
--EXIT-WHEN : 반복 종료를 위한 조건식을 지정하고 만족하면 종료
--CONTINUE : 수행 중인 반복문 현재 주기를 건너뜀
--CONTINUE-WHEN : 조건식을 만족하면 수행 중인 반복문 현재 주기를 건너뜀

--기본LOOP : 매우 간단한 형태의 반복문
--LOOP
--  반복 수행 문장;
--  EXIT WHEN 조건;
--END LOOP;

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