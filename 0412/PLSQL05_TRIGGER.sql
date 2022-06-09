--트리거(TRIGGER)
-- : 데이터베이스 안의 특정 상황이나 동작(이벤트)이 발생할 경우 자동으로 실행
--CREATE [OR REPLACE] TRIGGER 트리거 이름
--BEFORE(DML명령어 실행 전) | AFTER(DML명령어 실행 후)
--INSERT | UPDATE | DELETE ON 테이블 이름
--REFERENCING OLD AS OLD | NEW AS NEW
--FOR EACH ROW WHEN 조건식
--FOLLOWS 트리거이름2, 트리거이름3
--ENABLE | DISABLE

--DECLARE
--  선언부
--BEGIN
--  실행부
--EXCEPTION
--  예외처리부
--END;

--BEFORE 트리거
--STEP1. CTAS로 EMP;
CREATE TABLE emp_trg
AS
SELECT * FROM emp;

SELECT * FROM emp_trg;

--STEP2. TRIGGER생성
CREATE OR REPLACE TRIGGER trg_emp_nodm_weekend
BEFORE
INSERT OR UPDATE OR DELETE ON emp_trg

DECLARE

BEGIN
    IF TO_CHAR(SYSDATE,'DY')IN ('토','일') THEN --DY : 요일
        IF INSERTING THEN
            RAISE_APPLICATION_ERROR(-20000, '주말 사원정보 추가 불가');
        ELSIF UPDATING THEN
            RAISE_APPLICATION_ERROR(-20000, '주말 사원정보 수정 불가');
        ELSIF DELETING THEN
            RAISE_APPLICATION_ERROR(-20000, '주말 사원정보 삭제 불가');
        ELSE
            RAISE_APPLICATION_ERROR(-20000, '주말 사원정보 변경 불가');
        END IF;
    
    END IF;
END;
/