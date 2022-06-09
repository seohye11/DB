--DML Ʈ����(AFTER) : DML��ɾ ����� �� �� �۵��ϴ� Ʈ����

--emp_trg_log ���̺� ����
--dml��ɾ ����� ��� emp_trg_log���̺� �α� ����
--dml�����, dml��ɾ�, ����� ��¥

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

--SYS_CONTEXT('USERENV','SESSION_USER') : ���� �ý��ۿ� ������ �����