--���ڵ带 ����� UPDATE

SET SERVEROUTPUT ON;
DECLARE
    --RECORD ����
    TYPE rec_dept IS RECORD(
        deptno NUMBER(2) NOT NULL := 99,
        dname DEPT_RECORD.DNAME%TYPE,
        loc DEPT_RECORD.LOC%TYPE
    );
    --RECORD ����
    dept_rec REC_DEPT;
BEGIN
    dept_rec.deptno := 50;
    dept_rec.dname := 'WEB DEV';
    dept_rec.loc := 'HONGDAE';
    
    --SET ROW : �ο� ��ü ������ �Ҵ�
    UPDATE DEPT_RECORD
    SET ROW = dept_rec
    WHERE deptno = 70;
    
    COMMIT;
END;
/

SELECT * FROM DEPT_RECORD;