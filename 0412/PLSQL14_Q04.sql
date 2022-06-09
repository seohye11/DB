--dept_trg ���̺� ����
CREATE TABLE dept_trg
AS
SELECT * FROM dept;

SELECT * FROM dept_trg;

--dept_trg_log ���̺� ����
CREATE TABLE dept_trg_log
(
    tablename VARCHAR2(10),
    dml_type VARCHAR2(10),
    deptno NUMBER(2),
    user_name VARCHAR2(30),
    change_date DATE
);

SELECT * FROM dept_trg_log;


--trg_dept_log Ʈ���� ����
--dept_trg���̺� dml��� �������� dept_trg_log�� �����ϴ� trg_dept_logƮ���� ����
CREATE OR REPLACE TRIGGER trg_dept_log
AFTER
INSERT OR UPDATE OR DELETE ON dept_trg
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO dept_trg_log
        VALUES('dept_trg','INSERT',:new.deptno,
        SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);
        
    ELSIF UPDATING THEN
        INSERT INTO dept_trg_log
        VALUES('dept_trg','UPDATE',:old.deptno,
        SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);
        
    ELSIF DELETING THEN
        INSERT INTO dept_trg_log
        VALUES('dept_trg','DELETE',:old.deptno,
        SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);
    END IF;
END;
/

--trg_dept_log Ʈ���� ����
INSERT INTO dept_trg VALUES(99,'TEST_DNAME','SEOUL');
UPDATE dept_trg SET loc='TEST_LOC' WHERE deptno = 99;
DELETE FROM dept_trg WHERE deptno = 99;

SELECT *FROM dept_trg_log;

