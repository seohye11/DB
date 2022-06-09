--Ʈ����(TRIGGER)
-- : �����ͺ��̽� ���� Ư�� ��Ȳ�̳� ����(�̺�Ʈ)�� �߻��� ��� �ڵ����� ����
--CREATE [OR REPLACE] TRIGGER Ʈ���� �̸�
--BEFORE(DML��ɾ� ���� ��) | AFTER(DML��ɾ� ���� ��)
--INSERT | UPDATE | DELETE ON ���̺� �̸�
--REFERENCING OLD AS OLD | NEW AS NEW
--FOR EACH ROW WHEN ���ǽ�
--FOLLOWS Ʈ�����̸�2, Ʈ�����̸�3
--ENABLE | DISABLE

--DECLARE
--  �����
--BEGIN
--  �����
--EXCEPTION
--  ����ó����
--END;

--BEFORE Ʈ����
--STEP1. CTAS�� EMP;
CREATE TABLE emp_trg
AS
SELECT * FROM emp;

SELECT * FROM emp_trg;

--STEP2. TRIGGER����
CREATE OR REPLACE TRIGGER trg_emp_nodm_weekend
BEFORE
INSERT OR UPDATE OR DELETE ON emp_trg

DECLARE

BEGIN
    IF TO_CHAR(SYSDATE,'DY')IN ('��','��') THEN --DY : ����
        IF INSERTING THEN
            RAISE_APPLICATION_ERROR(-20000, '�ָ� ������� �߰� �Ұ�');
        ELSIF UPDATING THEN
            RAISE_APPLICATION_ERROR(-20000, '�ָ� ������� ���� �Ұ�');
        ELSIF DELETING THEN
            RAISE_APPLICATION_ERROR(-20000, '�ָ� ������� ���� �Ұ�');
        ELSE
            RAISE_APPLICATION_ERROR(-20000, '�ָ� ������� ���� �Ұ�');
        END IF;
    
    END IF;
END;
/