--CTAS�� DEPT_RECORD ���̺����
CREATE TABLE DEPT_RECORD
AS
SELECT * FROM dept;

SELECT * FROM DEPT_RECORD;

--���ڵ� ����� �Է�
SET SERVEROUTPUT ON;
DECLARE
    --RECORD����
    TYPE REC_DEPT IS RECORD(
        deptno NUMBER(2) NOT NULL := 99,
        dname DEPT_RECORD.DNAME%TYPE,
        loc DEPT_RECORD.LOC%TYPE
    );
    --RECORD ����
    dept_rec REC_DEPT;
BEGIN
    dept_rec.deptno := 70;
    dept_rec.dname := 'DEVELOPER';
    dept_rec.loc := 'SHINCHON';
    
    INSERT INTO DEPT_RECORD
    VALUES dept_rec;
    
    COMMIT;
END;
/

--�Էµ����� Ȯ��
SELECT * FROM DEPT_RECORD;
