--DML 트리거(AFTER) : DML명령어가 실행된 이 후 작동하는 트리거

--emp_trg_log 테이블 생성
--dml명령어가 실행될 경우 emp_trg_log테이블에 로그 생성
--dml사용자, dml명령어, 수행된 날짜

CREATE TABLE emp_trg_log
(
    tablename VARCHAR2(30),
    dml_type VARCHAR2(20),
    empno NUMBER(4),
    user_name VARCHAR2(50),
    change_date DATE
);

CREATE OR REPLACE TRIGGER trg_emp_log
AFTER
INSERT OR UPDATE OR DELETE ON emp_trg
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        INSERT INTO emp_trg_log
        VALUES('emp_trg','INSERT',:new.empno,
        SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);
    ELSIF UPDATING THEN
        INSERT INTO emp_trg_log
        VALUES('emp_trg','UPDATE',:old.empno,
        SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);
    ELSIF DELETING THEN
        INSERT INTO emp_trg_log
        VALUES('emp_trg','DELETE',:old.empno,
        SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);
    END IF;
END;
/

--SYS_CONTEXT('USERENV','SESSION_USER') : 현재 시스템에 접속한 사용자